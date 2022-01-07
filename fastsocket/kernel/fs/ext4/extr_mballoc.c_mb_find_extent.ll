; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_mballoc.c_mb_find_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_mballoc.c_mb_find_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_buddy = type { i32, i64, i32 }
%struct.ext4_free_extent = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_buddy*, i32, i32, i32, %struct.ext4_free_extent*)* @mb_find_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb_find_extent(%struct.ext4_buddy* %0, i32 %1, i32 %2, i32 %3, %struct.ext4_free_extent* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_buddy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext4_free_extent*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.ext4_buddy* %0, %struct.ext4_buddy** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ext4_free_extent* %4, %struct.ext4_free_extent** %11, align 8
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.ext4_buddy*, %struct.ext4_buddy** %7, align 8
  %18 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ext4_buddy*, %struct.ext4_buddy** %7, align 8
  %21 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @ext4_group_lock_ptr(i32 %19, i64 %22)
  %24 = call i32 @assert_spin_locked(i32 %23)
  %25 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %11, align 8
  %26 = icmp eq %struct.ext4_free_extent* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.ext4_buddy*, %struct.ext4_buddy** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i8* @mb_find_buddy(%struct.ext4_buddy* %29, i32 %30, i32* %13)
  store i8* %31, i8** %15, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = icmp eq i8* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp sge i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = load i8*, i8** %15, align 8
  %43 = call i64 @mb_test_bit(i32 %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %5
  %46 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %11, align 8
  %47 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %11, align 8
  %49 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %11, align 8
  %51 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  store i32 0, i32* %6, align 4
  br label %159

52:                                               ; preds = %5
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i64 @likely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.ext4_buddy*, %struct.ext4_buddy** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @mb_find_order_for_block(%struct.ext4_buddy* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = ashr i32 %62, %63
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %58, %52
  %66 = load i32, i32* %8, align 4
  %67 = shl i32 1, %66
  %68 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %11, align 8
  %69 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = shl i32 %70, %71
  %73 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %11, align 8
  %74 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ext4_buddy*, %struct.ext4_buddy** %7, align 8
  %76 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %11, align 8
  %79 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %11, align 8
  %82 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %80, %83
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %11, align 8
  %87 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %11, align 8
  %92 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %126, %65
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %11, align 8
  %98 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp sgt i32 %96, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load %struct.ext4_buddy*, %struct.ext4_buddy** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i8* @mb_find_buddy(%struct.ext4_buddy* %102, i32 %103, i32* %13)
  store i8* %104, i8** %15, align 8
  %105 = icmp ne i8* %104, null
  br label %106

106:                                              ; preds = %101, %95
  %107 = phi i1 [ false, %95 ], [ %105, %101 ]
  br i1 %107, label %108, label %140

108:                                              ; preds = %106
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  %111 = load i32, i32* %13, align 4
  %112 = icmp sge i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %140

114:                                              ; preds = %108
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  %117 = load i32, i32* %8, align 4
  %118 = shl i32 1, %117
  %119 = mul nsw i32 %116, %118
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load %struct.ext4_buddy*, %struct.ext4_buddy** %7, align 8
  %122 = call i8* @EXT4_MB_BITMAP(%struct.ext4_buddy* %121)
  %123 = call i64 @mb_test_bit(i32 %120, i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %114
  br label %140

126:                                              ; preds = %114
  %127 = load %struct.ext4_buddy*, %struct.ext4_buddy** %7, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @mb_find_order_for_block(%struct.ext4_buddy* %127, i32 %128)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %8, align 4
  %133 = ashr i32 %131, %132
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %8, align 4
  %135 = shl i32 1, %134
  %136 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %11, align 8
  %137 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %95

140:                                              ; preds = %125, %113, %106
  %141 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %11, align 8
  %142 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %11, align 8
  %145 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %143, %146
  %148 = load %struct.ext4_buddy*, %struct.ext4_buddy** %7, align 8
  %149 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 3
  %152 = shl i32 1, %151
  %153 = icmp sgt i32 %147, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @BUG_ON(i32 %154)
  %156 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %11, align 8
  %157 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %140, %45
  %160 = load i32, i32* %6, align 4
  ret i32 %160
}

declare dso_local i32 @assert_spin_locked(i32) #1

declare dso_local i32 @ext4_group_lock_ptr(i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @mb_find_buddy(%struct.ext4_buddy*, i32, i32*) #1

declare dso_local i64 @mb_test_bit(i32, i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mb_find_order_for_block(%struct.ext4_buddy*, i32) #1

declare dso_local i8* @EXT4_MB_BITMAP(%struct.ext4_buddy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
