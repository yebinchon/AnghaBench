; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_CIFSFindClose.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_CIFSFindClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"In CIFSSMBFindClose\00", align 1
@SMB_COM_FIND_CLOSE2 = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Send error in FindClose = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSFindClose(i32 %0, %struct.cifs_tcon* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cifs_tcon*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %9, align 8
  %10 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @SMB_COM_FIND_CLOSE2, align 4
  %12 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %13 = bitcast %struct.TYPE_2__** %9 to i8**
  %14 = call i32 @small_smb_init(i32 %11, i32 1, %struct.cifs_tcon* %12, i8** %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @EAGAIN, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %54

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %54

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %33 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %36 = bitcast %struct.TYPE_2__* %35 to i8*
  %37 = call i32 @SendReceiveNoRsp(i32 %31, i32 %34, i8* %36, i32 0)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %25
  %44 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %45 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %44, i32 0, i32 0
  %46 = call i32 @cifs_stats_inc(i32* %45)
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @EAGAIN, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %51, %43
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %23, %19
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @cFYI(i32, i8*) #1

declare dso_local i32 @small_smb_init(i32, i32, %struct.cifs_tcon*, i8**) #1

declare dso_local i32 @SendReceiveNoRsp(i32, i32, i8*, i32) #1

declare dso_local i32 @cERROR(i32, i8*, i32) #1

declare dso_local i32 @cifs_stats_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
