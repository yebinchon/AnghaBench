; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-opts.c_handle_deferred_opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-opts.c_handle_deferred_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deferred_opt = type { i64, i32 }
%struct.deps = type { i32 }

@deps_seen = common dso_local global i32 0, align 4
@parse_in = common dso_local global i32 0, align 4
@deferred_count = common dso_local global i64 0, align 8
@deferred_opts = common dso_local global %struct.deferred_opt* null, align 8
@OPT_MT = common dso_local global i64 0, align 8
@OPT_MQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @handle_deferred_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_deferred_opts() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.deps*, align 8
  %3 = alloca %struct.deferred_opt*, align 8
  %4 = load i32, i32* @deps_seen, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %45

7:                                                ; preds = %0
  %8 = load i32, i32* @parse_in, align 4
  %9 = call %struct.deps* @cpp_get_deps(i32 %8)
  store %struct.deps* %9, %struct.deps** %2, align 8
  store i64 0, i64* %1, align 8
  br label %10

10:                                               ; preds = %42, %7
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @deferred_count, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %10
  %15 = load %struct.deferred_opt*, %struct.deferred_opt** @deferred_opts, align 8
  %16 = load i64, i64* %1, align 8
  %17 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %15, i64 %16
  store %struct.deferred_opt* %17, %struct.deferred_opt** %3, align 8
  %18 = load %struct.deferred_opt*, %struct.deferred_opt** %3, align 8
  %19 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OPT_MT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %14
  %24 = load %struct.deferred_opt*, %struct.deferred_opt** %3, align 8
  %25 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OPT_MQ, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23, %14
  %30 = load %struct.deps*, %struct.deps** %2, align 8
  %31 = load %struct.deferred_opt*, %struct.deferred_opt** %3, align 8
  %32 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.deferred_opt*, %struct.deferred_opt** %3, align 8
  %35 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @OPT_MQ, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @deps_add_target(%struct.deps* %30, i32 %33, i32 %39)
  br label %41

41:                                               ; preds = %29, %23
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %1, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %1, align 8
  br label %10

45:                                               ; preds = %6, %10
  ret void
}

declare dso_local %struct.deps* @cpp_get_deps(i32) #1

declare dso_local i32 @deps_add_target(%struct.deps*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
