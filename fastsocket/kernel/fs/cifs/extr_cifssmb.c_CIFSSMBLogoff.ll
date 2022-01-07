; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_CIFSSMBLogoff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_CIFSSMBLogoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32, i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"In SMBLogoff for session disconnect\00", align 1
@EIO = common dso_local global i32 0, align 4
@SMB_COM_LOGOFF_ANDX = common dso_local global i32 0, align 4
@SECMODE_SIGN_REQUIRED = common dso_local global i32 0, align 4
@SECMODE_SIGN_ENABLED = common dso_local global i32 0, align 4
@SMBFLG2_SECURITY_SIGNATURE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSSMBLogoff(i32 %0, %struct.cifs_ses* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_ses*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cifs_ses* %1, %struct.cifs_ses** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %10 = icmp ne %struct.cifs_ses* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %13 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %2
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %89

19:                                               ; preds = %11
  %20 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %21 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %24 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %78

28:                                               ; preds = %19
  %29 = load i32, i32* @SMB_COM_LOGOFF_ANDX, align 4
  %30 = bitcast %struct.TYPE_5__** %6 to i8**
  %31 = call i32 @small_smb_init(i32 %29, i32 2, i32* null, i8** %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %36 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %89

39:                                               ; preds = %28
  %40 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %41 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = call i32 @GetNextMid(%struct.TYPE_6__* %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 4
  %47 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %48 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SECMODE_SIGN_REQUIRED, align 4
  %53 = load i32, i32* @SECMODE_SIGN_ENABLED, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %39
  %58 = load i32, i32* @SMBFLG2_SECURITY_SIGNATURE, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %58
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %57, %39
  %65 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %66 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 255, i32* %72, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = bitcast %struct.TYPE_5__* %75 to i8*
  %77 = call i32 @SendReceiveNoRsp(i32 %73, %struct.cifs_ses* %74, i8* %76, i32 0)
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %64, %27
  %79 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %80 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @EAGAIN, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %86, %78
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %34, %16
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @cFYI(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @small_smb_init(i32, i32, i32*, i8**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @GetNextMid(%struct.TYPE_6__*) #1

declare dso_local i32 @SendReceiveNoRsp(i32, %struct.cifs_ses*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
