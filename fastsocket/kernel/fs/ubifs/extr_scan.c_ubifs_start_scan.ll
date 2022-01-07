; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_scan.c_ubifs_start_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_scan.c_ubifs_start_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_scan_leb = type { i32, i32, i8*, i32 }
%struct.ubifs_info = type { i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"scan LEB %d:%d\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"cannot read %d bytes from LEB %d:%d, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_scan_leb* @ubifs_start_scan(%struct.ubifs_info* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.ubifs_scan_leb*, align 8
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ubifs_scan_leb*, align 8
  %11 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @dbg_scan(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* @GFP_NOFS, align 4
  %16 = call %struct.ubifs_scan_leb* @kzalloc(i32 24, i32 %15)
  store %struct.ubifs_scan_leb* %16, %struct.ubifs_scan_leb** %10, align 8
  %17 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %10, align 8
  %18 = icmp ne %struct.ubifs_scan_leb* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.ubifs_scan_leb* @ERR_PTR(i32 %21)
  store %struct.ubifs_scan_leb* %22, %struct.ubifs_scan_leb** %5, align 8
  br label %81

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %10, align 8
  %26 = getelementptr inbounds %struct.ubifs_scan_leb, %struct.ubifs_scan_leb* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %10, align 8
  %28 = getelementptr inbounds %struct.ubifs_scan_leb, %struct.ubifs_scan_leb* %27, i32 0, i32 3
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %10, align 8
  %32 = getelementptr inbounds %struct.ubifs_scan_leb, %struct.ubifs_scan_leb* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr i8, i8* %37, i64 %39
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %44, %46
  %48 = call i32 @ubi_read(i32 %35, i32 %36, i8* %40, i32 %41, i64 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %23
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @EBADMSG, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %58 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %59, %61
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @ubifs_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %10, align 8
  %68 = call i32 @kfree(%struct.ubifs_scan_leb* %67)
  %69 = load i32, i32* %11, align 4
  %70 = call %struct.ubifs_scan_leb* @ERR_PTR(i32 %69)
  store %struct.ubifs_scan_leb* %70, %struct.ubifs_scan_leb** %5, align 8
  br label %81

71:                                               ; preds = %51, %23
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @EBADMSG, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %10, align 8
  %78 = getelementptr inbounds %struct.ubifs_scan_leb, %struct.ubifs_scan_leb* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %71
  %80 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %10, align 8
  store %struct.ubifs_scan_leb* %80, %struct.ubifs_scan_leb** %5, align 8
  br label %81

81:                                               ; preds = %79, %56, %19
  %82 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %5, align 8
  ret %struct.ubifs_scan_leb* %82
}

declare dso_local i32 @dbg_scan(i8*, i32, i32) #1

declare dso_local %struct.ubifs_scan_leb* @kzalloc(i32, i32) #1

declare dso_local %struct.ubifs_scan_leb* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ubi_read(i32, i32, i8*, i32, i64) #1

declare dso_local i32 @ubifs_err(i8*, i64, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ubifs_scan_leb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
