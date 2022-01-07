; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_ibalance.c_internal_shift_right.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_ibalance.c_internal_shift_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i64*, i64*, i32*, i32 }
%struct.buffer_info = type { i64 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"src (%p) must be == tb->S[h](%p) when it disappears\00", align 1
@LAST_TO_FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.tree_balance*, i32, i32)* @internal_shift_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @internal_shift_right(i32 %0, %struct.tree_balance* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tree_balance*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_info, align 8
  %10 = alloca %struct.buffer_info, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.tree_balance* %1, %struct.tree_balance** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.tree_balance*, %struct.tree_balance** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @internal_define_dest_src_infos(i32 %14, %struct.tree_balance* %15, i32 %16, %struct.buffer_info* %9, %struct.buffer_info* %10, i32* %12, %struct.buffer_head** %11)
  %18 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %10, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @B_NR_ITEMS(i64 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %101

23:                                               ; preds = %4
  %24 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @internal_insert_key(%struct.buffer_info* %9, i32 0, %struct.buffer_head* %24, i32 %25)
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %90

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %10, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.tree_balance*, %struct.tree_balance** %6, align 8
  %35 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @PATH_H_PBUFFER(i32 %36, i32 %37)
  %39 = icmp ne i64 %33, %38
  br i1 %39, label %51, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %9, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.tree_balance*, %struct.tree_balance** %6, align 8
  %44 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %42, %49
  br label %51

51:                                               ; preds = %40, %31
  %52 = phi i1 [ true, %31 ], [ %50, %40 ]
  %53 = zext i1 %52 to i32
  %54 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %10, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.tree_balance*, %struct.tree_balance** %6, align 8
  %57 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @PATH_H_PBUFFER(i32 %58, i32 %59)
  %61 = call i32 @RFALSE(i32 %53, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %60)
  %62 = load %struct.tree_balance*, %struct.tree_balance** %6, align 8
  %63 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %51
  %71 = load %struct.tree_balance*, %struct.tree_balance** %6, align 8
  %72 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.tree_balance*, %struct.tree_balance** %6, align 8
  %75 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.tree_balance*, %struct.tree_balance** %6, align 8
  %82 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @replace_key(%struct.tree_balance* %71, %struct.buffer_head* %72, i32 %73, i64 %80, i32 %87)
  br label %89

89:                                               ; preds = %70, %51
  br label %100

90:                                               ; preds = %23
  %91 = load %struct.tree_balance*, %struct.tree_balance** %6, align 8
  %92 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = getelementptr inbounds %struct.buffer_info, %struct.buffer_info* %10, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %96, %97
  %99 = call i32 @replace_key(%struct.tree_balance* %91, %struct.buffer_head* %92, i32 %93, i64 %95, i32 %98)
  br label %100

100:                                              ; preds = %90, %89
  br label %101

101:                                              ; preds = %100, %4
  %102 = load i32, i32* @LAST_TO_FIRST, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @internal_move_pointers_items(%struct.buffer_info* %9, %struct.buffer_info* %10, i32 %102, i32 %103, i32 0)
  ret void
}

declare dso_local i32 @internal_define_dest_src_infos(i32, %struct.tree_balance*, i32, %struct.buffer_info*, %struct.buffer_info*, i32*, %struct.buffer_head**) #1

declare dso_local i32 @B_NR_ITEMS(i64) #1

declare dso_local i32 @internal_insert_key(%struct.buffer_info*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @RFALSE(i32, i8*, i64, i64) #1

declare dso_local i64 @PATH_H_PBUFFER(i32, i32) #1

declare dso_local i32 @replace_key(%struct.tree_balance*, %struct.buffer_head*, i32, i64, i32) #1

declare dso_local i32 @internal_move_pointers_items(%struct.buffer_info*, %struct.buffer_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
