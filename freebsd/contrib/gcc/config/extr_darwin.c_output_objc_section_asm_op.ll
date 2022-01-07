; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin.c_output_objc_section_asm_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin.c_output_objc_section_asm_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_objc_section_asm_op.been_here = internal global i32 0, align 4
@output_objc_section_asm_op.tomark = internal constant [20 x i32] [i32 147, i32 146, i32 129, i32 139, i32 130, i32 131, i32 140, i32 143, i32 136, i32 141, i32 138, i32 132, i32 144, i32 134, i32 135, i32 145, i32 142, i32 137, i32 133, i32 128], align 16
@darwin_sections = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @output_objc_section_asm_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_objc_section_asm_op(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @output_objc_section_asm_op.been_here, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  store i32 1, i32* @output_objc_section_asm_op.been_here, align 4
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %20, %6
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @ARRAY_SIZE(i32* getelementptr inbounds ([20 x i32], [20 x i32]* @output_objc_section_asm_op.tomark, i64 0, i64 0))
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load i32*, i32** @darwin_sections, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds [20 x i32], [20 x i32]* @output_objc_section_asm_op.tomark, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @switch_to_section(i32 %18)
  br label %20

20:                                               ; preds = %11
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %3, align 8
  br label %7

23:                                               ; preds = %7
  br label %24

24:                                               ; preds = %23, %1
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @output_section_asm_op(i8* %25)
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @switch_to_section(i32) #1

declare dso_local i32 @output_section_asm_op(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
