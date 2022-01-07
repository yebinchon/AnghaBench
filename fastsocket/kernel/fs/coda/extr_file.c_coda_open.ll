; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_file.c_coda_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_file.c_coda_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i16, %struct.coda_file_info* }
%struct.coda_file_info = type { %struct.file*, i64, i32 }

@O_EXCL = common dso_local global i16 0, align 2
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i32 0, align 4
@CODA_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca %struct.coda_file_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store %struct.file* null, %struct.file** %6, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 8
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @O_EXCL, align 2
  %16 = zext i16 %15 to i32
  %17 = xor i32 %16, -1
  %18 = and i32 %14, %17
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %8, align 2
  %20 = load i16, i16* %8, align 2
  %21 = call zeroext i16 @coda_flags_to_cflags(i16 zeroext %20)
  store i16 %21, i16* %9, align 2
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.coda_file_info* @kmalloc(i32 24, i32 %22)
  store %struct.coda_file_info* %23, %struct.coda_file_info** %10, align 8
  %24 = load %struct.coda_file_info*, %struct.coda_file_info** %10, align 8
  %25 = icmp ne %struct.coda_file_info* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %84

29:                                               ; preds = %2
  %30 = call i32 (...) @lock_kernel()
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = call i32 @coda_i2f(%struct.inode* %34)
  %36 = load i16, i16* %9, align 2
  %37 = call i32 @venus_open(i32 %33, i32 %35, i16 zeroext %36, %struct.file** %6)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.file*, %struct.file** %6, align 8
  %39 = icmp ne %struct.file* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %29
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.coda_file_info*, %struct.coda_file_info** %10, align 8
  %48 = call i32 @kfree(%struct.coda_file_info* %47)
  %49 = call i32 (...) @unlock_kernel()
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %84

51:                                               ; preds = %43
  %52 = load %struct.file*, %struct.file** %5, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 0
  %54 = load i16, i16* %53, align 8
  %55 = zext i16 %54 to i32
  %56 = load i32, i32* @O_APPEND, align 4
  %57 = load i32, i32* @O_SYNC, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = load %struct.file*, %struct.file** %6, align 8
  %61 = getelementptr inbounds %struct.file, %struct.file* %60, i32 0, i32 0
  %62 = load i16, i16* %61, align 8
  %63 = zext i16 %62 to i32
  %64 = or i32 %63, %59
  %65 = trunc i32 %64 to i16
  store i16 %65, i16* %61, align 8
  %66 = load i32, i32* @CODA_MAGIC, align 4
  %67 = load %struct.coda_file_info*, %struct.coda_file_info** %10, align 8
  %68 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.coda_file_info*, %struct.coda_file_info** %10, align 8
  %70 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.file*, %struct.file** %6, align 8
  %72 = load %struct.coda_file_info*, %struct.coda_file_info** %10, align 8
  %73 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %72, i32 0, i32 0
  store %struct.file* %71, %struct.file** %73, align 8
  %74 = load %struct.file*, %struct.file** %5, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 1
  %76 = load %struct.coda_file_info*, %struct.coda_file_info** %75, align 8
  %77 = icmp ne %struct.coda_file_info* %76, null
  %78 = zext i1 %77 to i32
  %79 = call i32 @BUG_ON(i32 %78)
  %80 = load %struct.coda_file_info*, %struct.coda_file_info** %10, align 8
  %81 = load %struct.file*, %struct.file** %5, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 1
  store %struct.coda_file_info* %80, %struct.coda_file_info** %82, align 8
  %83 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %51, %46, %26
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local zeroext i16 @coda_flags_to_cflags(i16 zeroext) #1

declare dso_local %struct.coda_file_info* @kmalloc(i32, i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @venus_open(i32, i32, i16 zeroext, %struct.file**) #1

declare dso_local i32 @coda_i2f(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.coda_file_info*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
