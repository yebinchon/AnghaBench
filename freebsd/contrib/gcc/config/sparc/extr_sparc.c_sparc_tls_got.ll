; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_tls_got.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_tls_got.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_pic = common dso_local global i64 0, align 8
@current_function_uses_pic_offset_table = common dso_local global i32 0, align 4
@pic_offset_table_rtx = common dso_local global i32 0, align 4
@global_offset_table = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"_GLOBAL_OFFSET_TABLE_\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sparc_tls_got to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc_tls_got() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @flag_pic, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  store i32 1, i32* @current_function_uses_pic_offset_table, align 4
  %6 = load i32, i32* @pic_offset_table_rtx, align 4
  store i32 %6, i32* %1, align 4
  br label %20

7:                                                ; preds = %0
  %8 = load i64, i64* @global_offset_table, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @Pmode, align 4
  %12 = call i64 @gen_rtx_SYMBOL_REF(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i64 %12, i64* @global_offset_table, align 8
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32, i32* @Pmode, align 4
  %15 = call i32 @gen_reg_rtx(i32 %14)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i64, i64* @global_offset_table, align 8
  %18 = call i32 @emit_move_insn(i32 %16, i64 %17)
  %19 = load i32, i32* %2, align 4
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %13, %5
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i64 @gen_rtx_SYMBOL_REF(i32, i8*) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_move_insn(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
