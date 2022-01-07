; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_import.c_zpool_open_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_import.c_zpool_open_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32, i32, i32, i64 }
%struct.stat64 = type { i64, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@SPA_MINDEVSIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @zpool_open_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zpool_open_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca %struct.stat64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %3, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %88

14:                                               ; preds = %1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @O_RDONLY, align 4
  %22 = call i32 @openat64(i32 %17, i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %14
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @ENOENT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nozpool_all_slices(i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %28, %24
  br label %88

37:                                               ; preds = %14
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @fstat64(i32 %38, %struct.stat64* %4)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.stat64, %struct.stat64* %4, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @S_ISREG(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.stat64, %struct.stat64* %4, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @S_ISCHR(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.stat64, %struct.stat64* %4, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @S_ISBLK(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51, %37
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @close(i32 %57)
  br label %88

59:                                               ; preds = %51, %46, %41
  %60 = getelementptr inbounds %struct.stat64, %struct.stat64* %4, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SPA_MINDEVSIZE, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @close(i32 %65)
  br label %88

67:                                               ; preds = %59
  %68 = load i32, i32* %6, align 4
  %69 = call i64 @zpool_read_label(i32 %68, i32** %5)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load i64, i64* @errno, align 8
  %73 = load i64, i64* @ENOMEM, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @close(i32 %76)
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @no_memory(i32 %80)
  br label %88

82:                                               ; preds = %71, %67
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @close(i32 %83)
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32* %85, i32** %87, align 8
  br label %88

88:                                               ; preds = %82, %75, %64, %56, %36, %13
  ret void
}

declare dso_local i32 @openat64(i32, i32, i32) #1

declare dso_local i32 @nozpool_all_slices(i32, i32) #1

declare dso_local i64 @fstat64(i32, %struct.stat64*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @S_ISCHR(i32) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @zpool_read_label(i32, i32**) #1

declare dso_local i32 @no_memory(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
