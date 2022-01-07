; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_enter_overlay_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_enter_overlay_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.overlay_list = type { %struct.overlay_list*, i32 }

@overlay_vma = common dso_local global i8* null, align 8
@overlay_section = common dso_local global i32 0, align 4
@overlay_subalign = common dso_local global i32 0, align 4
@overlay_list = common dso_local global %struct.overlay_list* null, align 8
@ADDR = common dso_local global i32 0, align 4
@current_section = common dso_local global i32 0, align 4
@SIZEOF = common dso_local global i32 0, align 4
@overlay_max = common dso_local global i32* null, align 8
@MAX_K = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lang_enter_overlay_section(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.overlay_list*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = load i8*, i8** @overlay_vma, align 8
  %7 = load i32, i32* @overlay_section, align 4
  %8 = load i32, i32* @overlay_subalign, align 4
  %9 = call i32 @lang_enter_output_section_statement(i8* %5, i8* %6, i32 %7, i32 0, i32 %8, i32 0, i32 0)
  %10 = load %struct.overlay_list*, %struct.overlay_list** @overlay_list, align 8
  %11 = icmp eq %struct.overlay_list* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @ADDR, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = call i8* @exp_nameop(i32 %13, i8* %14)
  store i8* %15, i8** @overlay_vma, align 8
  br label %16

16:                                               ; preds = %12, %1
  %17 = call %struct.overlay_list* @xmalloc(i32 16)
  store %struct.overlay_list* %17, %struct.overlay_list** %3, align 8
  %18 = load i32, i32* @current_section, align 4
  %19 = load %struct.overlay_list*, %struct.overlay_list** %3, align 8
  %20 = getelementptr inbounds %struct.overlay_list, %struct.overlay_list* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.overlay_list*, %struct.overlay_list** @overlay_list, align 8
  %22 = load %struct.overlay_list*, %struct.overlay_list** %3, align 8
  %23 = getelementptr inbounds %struct.overlay_list, %struct.overlay_list* %22, i32 0, i32 0
  store %struct.overlay_list* %21, %struct.overlay_list** %23, align 8
  %24 = load %struct.overlay_list*, %struct.overlay_list** %3, align 8
  store %struct.overlay_list* %24, %struct.overlay_list** @overlay_list, align 8
  %25 = load i32, i32* @SIZEOF, align 4
  %26 = load i8*, i8** %2, align 8
  %27 = call i8* @exp_nameop(i32 %25, i8* %26)
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** @overlay_max, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = load i32*, i32** %4, align 8
  store i32* %32, i32** @overlay_max, align 8
  br label %38

33:                                               ; preds = %16
  %34 = load i32, i32* @MAX_K, align 4
  %35 = load i32*, i32** @overlay_max, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32* @exp_binop(i32 %34, i32* %35, i32* %36)
  store i32* %37, i32** @overlay_max, align 8
  br label %38

38:                                               ; preds = %33, %31
  ret void
}

declare dso_local i32 @lang_enter_output_section_statement(i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @exp_nameop(i32, i8*) #1

declare dso_local %struct.overlay_list* @xmalloc(i32) #1

declare dso_local i32* @exp_binop(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
