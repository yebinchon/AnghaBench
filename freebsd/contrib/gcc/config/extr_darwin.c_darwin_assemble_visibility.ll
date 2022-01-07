; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin.c_darwin_assemble_visibility.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin.c_darwin_assemble_visibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VISIBILITY_DEFAULT = common dso_local global i32 0, align 4
@VISIBILITY_HIDDEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"\09.private_extern \00", align 1
@asm_out_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@OPT_Wattributes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [90 x i8] c"internal and protected visibility attributes not supported in this configuration; ignored\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @darwin_assemble_visibility(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @VISIBILITY_DEFAULT, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %27

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @VISIBILITY_HIDDEN, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load i32, i32* @asm_out_file, align 4
  %15 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @asm_out_file, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @DECL_ASSEMBLER_NAME(i32 %17)
  %19 = call i32 @IDENTIFIER_POINTER(i32 %18)
  %20 = call i32 @assemble_name(i32 %16, i32 %19)
  %21 = load i32, i32* @asm_out_file, align 4
  %22 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %26

23:                                               ; preds = %9
  %24 = load i32, i32* @OPT_Wattributes, align 4
  %25 = call i32 @warning(i32 %24, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %13
  br label %27

27:                                               ; preds = %26, %8
  ret void
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @assemble_name(i32, i32) #1

declare dso_local i32 @IDENTIFIER_POINTER(i32) #1

declare dso_local i32 @DECL_ASSEMBLER_NAME(i32) #1

declare dso_local i32 @warning(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
