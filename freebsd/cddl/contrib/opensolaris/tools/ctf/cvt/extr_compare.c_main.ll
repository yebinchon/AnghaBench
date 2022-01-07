; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_compare.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_compare.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@progname = common dso_local global i8* null, align 8
@read_ctf_save_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s doesn't have stabs or CTF\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s doesn't contain CTF data\0A\00", align 1
@iidesc_dump = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"%s grew by %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** @progname, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 3
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 (...) @usage()
  %20 = call i32 @exit(i32 2) #3
  unreachable

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %10, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %11, align 8
  %28 = call %struct.TYPE_8__* (...) @tdata_new()
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %7, align 8
  %29 = call %struct.TYPE_8__* (...) @tdata_new()
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %8, align 8
  %30 = call %struct.TYPE_8__* (...) @tdata_new()
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %9, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i64 @read_stabs(%struct.TYPE_8__* %31, i8* %32, i32 0)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = call i32 @merge_into_master(%struct.TYPE_8__* %36, %struct.TYPE_8__* %37, %struct.TYPE_8__* null, i32 1)
  br label %47

39:                                               ; preds = %21
  %40 = load i32, i32* @read_ctf_save_cb, align 4
  %41 = call i64 @read_ctf(i8** %11, i32 1, i32* null, i32 %40, %struct.TYPE_8__** %8, i32 0)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 (i8*, i8*, ...) @terminate(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %39
  br label %47

47:                                               ; preds = %46, %35
  %48 = load i32, i32* @read_ctf_save_cb, align 4
  %49 = call i64 @read_ctf(i8** %10, i32 1, i32* null, i32 %48, %struct.TYPE_8__** %6, i32 0)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 (i8*, i8*, ...) @terminate(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %51, %47
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %58 = call i32 @merge_into_master(%struct.TYPE_8__* %55, %struct.TYPE_8__* %56, %struct.TYPE_8__* %57, i32 0)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @hash_count(i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %54
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* @iidesc_dump, align 8
  %69 = inttoptr i64 %68 to i32 (...)*
  %70 = call i32 @hash_iter(i32 %67, i32 (...)* %69, i32* null)
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 (i8*, i8*, ...) @terminate(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %71, i32 %72)
  br label %74

74:                                               ; preds = %64, %54
  ret i32 0
}

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_8__* @tdata_new(...) #1

declare dso_local i64 @read_stabs(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @merge_into_master(%struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @read_ctf(i8**, i32, i32*, i32, %struct.TYPE_8__**, i32) #1

declare dso_local i32 @terminate(i8*, i8*, ...) #1

declare dso_local i32 @hash_count(i32) #1

declare dso_local i32 @hash_iter(i32, i32 (...)*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
