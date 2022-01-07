; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_find_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_xattr_entry = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_xattr_entry**, i32, i8*, i64, i32)* @ext4_xattr_find_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_find_entry(%struct.ext4_xattr_entry** %0, i32 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_xattr_entry**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ext4_xattr_entry*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ext4_xattr_entry** %0, %struct.ext4_xattr_entry*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 1, i32* %14, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %91

20:                                               ; preds = %5
  %21 = load i8*, i8** %9, align 8
  %22 = call i64 @strlen(i8* %21)
  store i64 %22, i64* %13, align 8
  %23 = load %struct.ext4_xattr_entry**, %struct.ext4_xattr_entry*** %7, align 8
  %24 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %23, align 8
  store %struct.ext4_xattr_entry* %24, %struct.ext4_xattr_entry** %12, align 8
  br label %25

25:                                               ; preds = %66, %20
  %26 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %12, align 8
  %27 = call i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %69

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %12, align 8
  %33 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %31, %34
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %30
  %39 = load i64, i64* %13, align 8
  %40 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %12, align 8
  %41 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %39, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %38, %30
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %12, align 8
  %51 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @memcmp(i8* %49, i32 %52, i64 %53)
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %48, %45
  %56 = load i32, i32* %14, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %14, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61, %58
  br label %69

65:                                               ; preds = %61, %55
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %12, align 8
  %68 = call %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry* %67)
  store %struct.ext4_xattr_entry* %68, %struct.ext4_xattr_entry** %12, align 8
  br label %25

69:                                               ; preds = %64, %25
  %70 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %12, align 8
  %71 = load %struct.ext4_xattr_entry**, %struct.ext4_xattr_entry*** %7, align 8
  store %struct.ext4_xattr_entry* %70, %struct.ext4_xattr_entry** %71, align 8
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %69
  %75 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %12, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i64 @ext4_xattr_check_entry(%struct.ext4_xattr_entry* %75, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %91

82:                                               ; preds = %74, %69
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* @ENODATA, align 4
  %87 = sub nsw i32 0, %86
  br label %89

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %85
  %90 = phi i32 [ %87, %85 ], [ 0, %88 ]
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %89, %79, %17
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry*) #1

declare dso_local i32 @memcmp(i8*, i32, i64) #1

declare dso_local %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry*) #1

declare dso_local i64 @ext4_xattr_check_entry(%struct.ext4_xattr_entry*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
