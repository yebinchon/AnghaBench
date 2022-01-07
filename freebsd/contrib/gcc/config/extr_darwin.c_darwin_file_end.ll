; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin.c_darwin_file_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin.c_darwin_file_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@asm_out_file = common dso_local global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"GNU C++\00", align 1
@darwin_sections = common dso_local global i32* null, align 8
@constructor_section = common dso_local global i64 0, align 8
@destructor_section = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"\09.subsections_via_symbols\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @darwin_file_end() #0 {
  %1 = load i32, i32* @asm_out_file, align 4
  %2 = call i32 @machopic_finish(i32 %1)
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 4
  %4 = call i64 @strcmp(i32 %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %0
  %7 = load i32*, i32** @darwin_sections, align 8
  %8 = load i64, i64* @constructor_section, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @switch_to_section(i32 %10)
  %12 = load i32*, i32** @darwin_sections, align 8
  %13 = load i64, i64* @destructor_section, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @switch_to_section(i32 %15)
  %17 = load i32, i32* @asm_out_file, align 4
  %18 = call i32 @ASM_OUTPUT_ALIGN(i32 %17, i32 1)
  br label %19

19:                                               ; preds = %6, %0
  %20 = load i32, i32* @asm_out_file, align 4
  %21 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @machopic_finish(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @switch_to_section(i32) #1

declare dso_local i32 @ASM_OUTPUT_ALIGN(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
