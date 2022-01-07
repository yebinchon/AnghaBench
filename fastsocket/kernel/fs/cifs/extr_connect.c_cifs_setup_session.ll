; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_setup_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_setup_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32, i32*, %struct.TYPE_4__, i32, %struct.TCP_Server_Info*, i32, i64 }
%struct.TYPE_4__ = type { i64, i32* }
%struct.TCP_Server_Info = type { i32, i32, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32* }
%struct.nls_table = type { i32 }

@linuxExtEnabled = common dso_local global i64 0, align 8
@CAP_UNIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Security Mode: 0x%x Capabilities: 0x%x TimeAdjust: %d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Send error in SessSetup = %d\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"CIFS Session Established successfully\00", align 1
@GlobalMid_Lock = common dso_local global i32 0, align 4
@CifsGood = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_setup_session(i32 %0, %struct.cifs_ses* %1, %struct.nls_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_ses*, align 8
  %6 = alloca %struct.nls_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TCP_Server_Info*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.cifs_ses* %1, %struct.cifs_ses** %5, align 8
  store %struct.nls_table* %2, %struct.nls_table** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %10 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %9, i32 0, i32 4
  %11 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %10, align 8
  store %struct.TCP_Server_Info* %11, %struct.TCP_Server_Info** %8, align 8
  %12 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %13 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %12, i32 0, i32 6
  store i64 0, i64* %13, align 8
  %14 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %15 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %18 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load i64, i64* @linuxExtEnabled, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load i32, i32* @CAP_UNIX, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %25 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %21, %3
  %29 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %30 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %33 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %36 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %41 = load %struct.nls_table*, %struct.nls_table** %6, align 8
  %42 = call i32 @CIFS_SessSetup(i32 %39, %struct.cifs_ses* %40, %struct.nls_table* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %28
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %92

48:                                               ; preds = %28
  %49 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %50 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %49, i32 0, i32 4
  %51 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %50, align 8
  %52 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %51, i32 0, i32 2
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %55 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %80, label %58

58:                                               ; preds = %48
  %59 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %60 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %64 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32* %62, i32** %65, align 8
  %66 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %67 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %71 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  %73 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %74 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %73, i32 0, i32 1
  store i32 2, i32* %74, align 4
  %75 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %76 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %78 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %58, %48
  %81 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %82 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %81, i32 0, i32 2
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %85 = call i32 @spin_lock(i32* @GlobalMid_Lock)
  %86 = load i32, i32* @CifsGood, align 4
  %87 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %88 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %90 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  br label %92

92:                                               ; preds = %80, %45
  %93 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %94 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @kfree(i32* %96)
  %98 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %99 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store i32* null, i32** %100, align 8
  %101 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %102 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  %104 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %105 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @kfree(i32* %106)
  %108 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %109 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %108, i32 0, i32 1
  store i32* null, i32** %109, align 8
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32 @CIFS_SessSetup(i32, %struct.cifs_ses*, %struct.nls_table*) #1

declare dso_local i32 @cERROR(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
