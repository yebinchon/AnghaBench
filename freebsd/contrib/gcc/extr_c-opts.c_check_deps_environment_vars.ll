; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-opts.c_check_deps_environment_vars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-opts.c_check_deps_environment_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"DEPENDENCIES_OUTPUT\00", align 1
@DEPS_USER = common dso_local global i32 0, align 4
@cpp_opts = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"SUNPRO_DEPENDENCIES\00", align 1
@DEPS_SYSTEM = common dso_local global i32 0, align 4
@OPT_MT = common dso_local global i32 0, align 4
@deps_file = common dso_local global i8* null, align 8
@deps_append = common dso_local global i32 0, align 4
@deps_seen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_deps_environment_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_deps_environment_vars() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i32 @GET_ENVIRONMENT(i8* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %5 = load i8*, i8** %1, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i32, i32* @DEPS_USER, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpp_opts, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 4
  br label %26

12:                                               ; preds = %0
  %13 = load i8*, i8** %1, align 8
  %14 = call i32 @GET_ENVIRONMENT(i8* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i8*, i8** %1, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load i32, i32* @DEPS_SYSTEM, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpp_opts, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpp_opts, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %17, %12
  br label %26

26:                                               ; preds = %25, %7
  %27 = load i8*, i8** %1, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = load i8*, i8** %1, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 32)
  store i8* %31, i8** %2, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* @OPT_MT, align 4
  %36 = load i8*, i8** %2, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = call i32 @defer_opt(i32 %35, i8* %37)
  %39 = load i8*, i8** %2, align 8
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i8*, i8** @deps_file, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load i8*, i8** %1, align 8
  store i8* %44, i8** @deps_file, align 8
  br label %45

45:                                               ; preds = %43, %40
  store i32 1, i32* @deps_append, align 4
  store i32 1, i32* @deps_seen, align 4
  br label %46

46:                                               ; preds = %45, %26
  ret void
}

declare dso_local i32 @GET_ENVIRONMENT(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @defer_opt(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
