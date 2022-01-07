; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/tsan/go/extr_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/tsan/go/extr_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@symbolize_cb = common dso_local global i32 0, align 4
@current_proc = common dso_local global i8* null, align 8
@go_heap = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FIXED = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@buf0 = common dso_local global i64 0, align 8
@MAP_FAILED = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"failed to allocate Go-like heap at %p; errno %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@barfoo = common dso_local global i32 0, align 4
@foobar = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i8* null, i8** %2, align 8
  store i8* null, i8** %3, align 8
  %8 = load i32, i32* @symbolize_cb, align 4
  %9 = call i32 @__tsan_init(i8** %2, i8** %3, i32 %8)
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** @current_proc, align 8
  %11 = load i32, i32* @go_heap, align 4
  %12 = load i32, i32* @PROT_READ, align 4
  %13 = load i32, i32* @PROT_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MAP_PRIVATE, align 4
  %16 = load i32, i32* @MAP_FIXED, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @MAP_ANON, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @mmap(i32 %11, i32 16384, i32 %14, i32 %19, i32 -1, i32 0)
  store i64 %20, i64* @buf0, align 8
  %21 = load i64, i64* @buf0, align 8
  %22 = load i64, i64* @MAP_FAILED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %0
  %25 = load i32, i32* @stderr, align 4
  %26 = load i32, i32* @go_heap, align 4
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  store i32 1, i32* %1, align 4
  br label %92

29:                                               ; preds = %0
  %30 = load i64, i64* @buf0, align 8
  %31 = add i64 %30, 65536
  %32 = sub i64 %31, 1
  %33 = and i64 %32, -65536
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %4, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @__tsan_map_shadow(i8* %35, i32 4096)
  %37 = load i8*, i8** %2, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @__tsan_malloc(i8* %37, i8* getelementptr inbounds (i8, i8* bitcast (i32* @barfoo to i8*), i64 1), i8* %38, i32 10)
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @__tsan_free(i8* %40, i32 10)
  %42 = load i8*, i8** %2, align 8
  %43 = call i32 @__tsan_func_enter(i8* %42, i8* getelementptr inbounds (i8, i8* bitcast (i32 ()* @main to i8*), i64 1))
  %44 = load i8*, i8** %2, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @__tsan_malloc(i8* %44, i8* getelementptr inbounds (i8, i8* bitcast (i32* @barfoo to i8*), i64 1), i8* %45, i32 10)
  %47 = load i8*, i8** %2, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @__tsan_release(i8* %47, i8* %48)
  %50 = load i8*, i8** %2, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @__tsan_release_merge(i8* %50, i8* %51)
  store i8* null, i8** %5, align 8
  %53 = load i8*, i8** %2, align 8
  %54 = call i32 @__tsan_go_start(i8* %53, i8** %5, i8* getelementptr inbounds (i8, i8* bitcast (i32* @barfoo to i8*), i64 1))
  store i8* null, i8** %6, align 8
  %55 = load i8*, i8** %2, align 8
  %56 = call i32 @__tsan_go_start(i8* %55, i8** %6, i8* getelementptr inbounds (i8, i8* bitcast (i32* @barfoo to i8*), i64 1))
  %57 = load i8*, i8** %2, align 8
  %58 = call i32 @__tsan_func_exit(i8* %57)
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @__tsan_func_enter(i8* %59, i8* getelementptr inbounds (i8, i8* bitcast (i32* @foobar to i8*), i64 1))
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @__tsan_func_enter(i8* %61, i8* getelementptr inbounds (i8, i8* bitcast (i32* @foobar to i8*), i64 1))
  %63 = load i8*, i8** %5, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @__tsan_write(i8* %63, i8* %64, i8* getelementptr inbounds (i8, i8* bitcast (i32* @barfoo to i8*), i64 1))
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @__tsan_acquire(i8* %66, i8* %67)
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @__tsan_func_exit(i8* %69)
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @__tsan_func_exit(i8* %71)
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @__tsan_go_end(i8* %73)
  store i8* null, i8** %7, align 8
  %75 = call i32 @__tsan_proc_create(i8** %7)
  %76 = load i8*, i8** %7, align 8
  store i8* %76, i8** @current_proc, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @__tsan_func_enter(i8* %77, i8* getelementptr inbounds (i8, i8* bitcast (i32* @foobar to i8*), i64 1))
  %79 = load i8*, i8** %6, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 @__tsan_read(i8* %79, i8* %80, i8* getelementptr inbounds (i8, i8* bitcast (i32* @barfoo to i8*), i64 1))
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @__tsan_free(i8* %82, i32 10)
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @__tsan_func_exit(i8* %84)
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @__tsan_go_end(i8* %86)
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @__tsan_proc_destroy(i8* %88)
  %90 = load i8*, i8** %3, align 8
  store i8* %90, i8** @current_proc, align 8
  %91 = call i32 (...) @__tsan_fini()
  store i32 0, i32* %1, align 4
  br label %92

92:                                               ; preds = %29, %24
  %93 = load i32, i32* %1, align 4
  ret i32 %93
}

declare dso_local i32 @__tsan_init(i8**, i8**, i32) #1

declare dso_local i64 @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @__tsan_map_shadow(i8*, i32) #1

declare dso_local i32 @__tsan_malloc(i8*, i8*, i8*, i32) #1

declare dso_local i32 @__tsan_free(i8*, i32) #1

declare dso_local i32 @__tsan_func_enter(i8*, i8*) #1

declare dso_local i32 @__tsan_release(i8*, i8*) #1

declare dso_local i32 @__tsan_release_merge(i8*, i8*) #1

declare dso_local i32 @__tsan_go_start(i8*, i8**, i8*) #1

declare dso_local i32 @__tsan_func_exit(i8*) #1

declare dso_local i32 @__tsan_write(i8*, i8*, i8*) #1

declare dso_local i32 @__tsan_acquire(i8*, i8*) #1

declare dso_local i32 @__tsan_go_end(i8*) #1

declare dso_local i32 @__tsan_proc_create(i8**) #1

declare dso_local i32 @__tsan_read(i8*, i8*, i8*) #1

declare dso_local i32 @__tsan_proc_destroy(i8*) #1

declare dso_local i32 @__tsan_fini(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
