; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_init_tls_builtins.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_init_tls_builtins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*, i32*, i32, i32, i32*, i32*)* }

@.str = private unnamed_addr constant [8 x i8] c"nothrow\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@ptr_type_node = common dso_local global i32 0, align 4
@void_list_node = common dso_local global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"__builtin_thread_pointer\00", align 1
@ARM_BUILTIN_THREAD_POINTER = common dso_local global i32 0, align 4
@BUILT_IN_MD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @arm_init_tls_builtins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_init_tls_builtins() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32 @get_identifier(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %5 = call i32* @tree_cons(i32 %4, i32* null, i32* null)
  store i32* %5, i32** %2, align 8
  %6 = call i32 @get_identifier(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32*, i32** %2, align 8
  %8 = call i32* @tree_cons(i32 %6, i32* null, i32* %7)
  store i32* %8, i32** %3, align 8
  %9 = load i32, i32* @ptr_type_node, align 4
  %10 = load i32, i32* @void_list_node, align 4
  %11 = call i32* @build_function_type(i32 %9, i32 %10)
  store i32* %11, i32** %1, align 8
  %12 = load i32 (i8*, i32*, i32, i32, i32*, i32*)*, i32 (i8*, i32*, i32, i32, i32*, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %13 = load i32*, i32** %1, align 8
  %14 = load i32, i32* @ARM_BUILTIN_THREAD_POINTER, align 4
  %15 = load i32, i32* @BUILT_IN_MD, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 %12(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %13, i32 %14, i32 %15, i32* null, i32* %16)
  ret void
}

declare dso_local i32* @tree_cons(i32, i32*, i32*) #1

declare dso_local i32 @get_identifier(i8*) #1

declare dso_local i32* @build_function_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
