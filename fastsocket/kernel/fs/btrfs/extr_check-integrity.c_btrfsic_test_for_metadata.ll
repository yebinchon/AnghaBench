; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_check-integrity.c_btrfsic_test_for_metadata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_check-integrity.c_btrfsic_test_for_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfsic_state = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.btrfs_header = type { i8*, i32 }

@BTRFS_CSUM_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@BTRFS_UUID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfsic_state*, i8**, i32)* @btrfsic_test_for_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfsic_test_for_metadata(%struct.btrfsic_state* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfsic_state*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_header*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.btrfsic_state* %0, %struct.btrfsic_state** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @BTRFS_CSUM_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  store i32 -1, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %22 = mul i32 %20, %21
  %23 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %24 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %108

28:                                               ; preds = %3
  %29 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %30 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %33 = lshr i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load i8**, i8*** %6, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast i8* %36 to %struct.btrfs_header*
  store %struct.btrfs_header* %37, %struct.btrfs_header** %8, align 8
  %38 = load %struct.btrfs_header*, %struct.btrfs_header** %8, align 8
  %39 = getelementptr inbounds %struct.btrfs_header, %struct.btrfs_header* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %42 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BTRFS_UUID_SIZE, align 4
  %49 = call i64 @memcmp(i8* %40, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %108

52:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %92, %52
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %95

57:                                               ; preds = %53
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i8**, i8*** %6, align 8
  %62 = load i32, i32* %12, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  br label %75

66:                                               ; preds = %57
  %67 = load i8**, i8*** %6, align 8
  %68 = load i32, i32* %12, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* @BTRFS_CSUM_SIZE, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  br label %75

75:                                               ; preds = %66, %60
  %76 = phi i8* [ %65, %60 ], [ %74, %66 ]
  store i8* %76, i8** %14, align 8
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  br label %85

81:                                               ; preds = %75
  %82 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %83 = load i32, i32* @BTRFS_CSUM_SIZE, align 4
  %84 = sub i32 %82, %83
  br label %85

85:                                               ; preds = %81, %79
  %86 = phi i32 [ %80, %79 ], [ %84, %81 ]
  %87 = zext i32 %86 to i64
  store i64 %87, i64* %15, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i8*, i8** %14, align 8
  %90 = load i64, i64* %15, align 8
  %91 = call i32 @crc32c(i32 %88, i8* %89, i64 %90)
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %12, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %53

95:                                               ; preds = %53
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @btrfs_csum_final(i32 %96, i8* %19)
  %98 = load %struct.btrfs_header*, %struct.btrfs_header** %8, align 8
  %99 = getelementptr inbounds %struct.btrfs_header, %struct.btrfs_header* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %102 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @memcmp(i8* %19, i32 %100, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %95
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %108

107:                                              ; preds = %95
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %108

108:                                              ; preds = %107, %106, %51, %27
  %109 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @memcmp(i8*, i32, i32) #2

declare dso_local i32 @crc32c(i32, i8*, i64) #2

declare dso_local i32 @btrfs_csum_final(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
