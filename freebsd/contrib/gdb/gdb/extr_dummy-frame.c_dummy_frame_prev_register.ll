; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dummy-frame.c_dummy_frame_prev_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dummy-frame.c_dummy_frame_prev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.dummy_frame = type { i32 }
%struct.frame_id = type { i32 }

@not_lval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i8**, i32, i32*, i32*, i64*, i32*, i8*)* @dummy_frame_prev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dummy_frame_prev_register(%struct.frame_info* %0, i8** %1, i32 %2, i32* %3, i32* %4, i64* %5, i32* %6, i8* %7) #0 {
  %9 = alloca %struct.frame_info*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.dummy_frame*, align 8
  %18 = alloca %struct.frame_id, align 4
  store %struct.frame_info* %0, %struct.frame_info** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  store i8* %7, i8** %16, align 8
  %19 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %20 = load i8**, i8*** %10, align 8
  %21 = call i32 @dummy_frame_this_id(%struct.frame_info* %19, i8** %20, %struct.frame_id* %18)
  %22 = load i8**, i8*** %10, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = bitcast i8* %23 to %struct.dummy_frame*
  store %struct.dummy_frame* %24, %struct.dummy_frame** %17, align 8
  %25 = load %struct.dummy_frame*, %struct.dummy_frame** %17, align 8
  %26 = icmp ne %struct.dummy_frame* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @gdb_assert(i32 %27)
  %29 = load i32*, i32** %12, align 8
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* @not_lval, align 4
  %31 = load i32*, i32** %13, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i64*, i64** %14, align 8
  store i64 0, i64* %32, align 8
  %33 = load i32*, i32** %15, align 8
  store i32 -1, i32* %33, align 4
  %34 = load i8*, i8** %16, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %8
  %37 = load %struct.dummy_frame*, %struct.dummy_frame** %17, align 8
  %38 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i8*, i8** %16, align 8
  %42 = call i32 @regcache_cooked_read(i32 %39, i32 %40, i8* %41)
  br label %43

43:                                               ; preds = %36, %8
  ret void
}

declare dso_local i32 @dummy_frame_this_id(%struct.frame_info*, i8**, %struct.frame_id*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @regcache_cooked_read(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
