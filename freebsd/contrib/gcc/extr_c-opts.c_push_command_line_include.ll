; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-opts.c_push_command_line_include.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-opts.c_push_command_line_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deferred_opt = type { i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@include_cursor = common dso_local global i64 0, align 8
@deferred_count = common dso_local global i64 0, align 8
@deferred_opts = common dso_local global %struct.deferred_opt* null, align 8
@cpp_opts = common dso_local global %struct.TYPE_4__* null, align 8
@OPT_include = common dso_local global i64 0, align 8
@parse_in = common dso_local global i32 0, align 4
@warn_unused_macros = common dso_local global i32 0, align 4
@LC_RENAME = common dso_local global i32 0, align 4
@this_input_filename = common dso_local global i32 0, align 4
@line_table = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @push_command_line_include to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_command_line_include() #0 {
  %1 = alloca %struct.deferred_opt*, align 8
  br label %2

2:                                                ; preds = %29, %0
  %3 = load i64, i64* @include_cursor, align 8
  %4 = load i64, i64* @deferred_count, align 8
  %5 = icmp slt i64 %3, %4
  br i1 %5, label %6, label %30

6:                                                ; preds = %2
  %7 = load %struct.deferred_opt*, %struct.deferred_opt** @deferred_opts, align 8
  %8 = load i64, i64* @include_cursor, align 8
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* @include_cursor, align 8
  %10 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %7, i64 %8
  store %struct.deferred_opt* %10, %struct.deferred_opt** %1, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpp_opts, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %6
  %16 = load %struct.deferred_opt*, %struct.deferred_opt** %1, align 8
  %17 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @OPT_include, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load i32, i32* @parse_in, align 4
  %23 = load %struct.deferred_opt*, %struct.deferred_opt** %1, align 8
  %24 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @cpp_push_include(i32 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %53

29:                                               ; preds = %21, %15, %6
  br label %2

30:                                               ; preds = %2
  %31 = load i64, i64* @include_cursor, align 8
  %32 = load i64, i64* @deferred_count, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load i64, i64* @include_cursor, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* @include_cursor, align 8
  %37 = load i32, i32* @warn_unused_macros, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpp_opts, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpp_opts, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @parse_in, align 4
  %46 = load i32, i32* @LC_RENAME, align 4
  %47 = load i32, i32* @this_input_filename, align 4
  %48 = call i32 @cpp_change_file(i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %34
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpp_opts, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @line_table, i32 0, i32 0), align 4
  br label %53

53:                                               ; preds = %28, %49, %30
  ret void
}

declare dso_local i64 @cpp_push_include(i32, i32) #1

declare dso_local i32 @cpp_change_file(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
