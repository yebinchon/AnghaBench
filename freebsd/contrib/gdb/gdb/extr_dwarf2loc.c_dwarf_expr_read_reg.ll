; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2loc.c_dwarf_expr_read_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2loc.c_dwarf_expr_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf_expr_baton = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @dwarf_expr_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwarf_expr_read_reg(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dwarf_expr_baton*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.dwarf_expr_baton*
  store %struct.dwarf_expr_baton* %15, %struct.dwarf_expr_baton** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @DWARF2_REG_TO_REGNUM(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @current_gdbarch, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @register_size(i32 %18, i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call i64 @alloca(i32 %21)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %9, align 8
  %24 = load %struct.dwarf_expr_baton*, %struct.dwarf_expr_baton** %5, align 8
  %25 = getelementptr inbounds %struct.dwarf_expr_baton, %struct.dwarf_expr_baton* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @frame_register(i32 %26, i32 %27, i32* %10, i32* %8, i32* %7, i32* %12, i8* %28)
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @extract_unsigned_integer(i8* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i32 @DWARF2_REG_TO_REGNUM(i32) #1

declare dso_local i32 @register_size(i32, i32) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @frame_register(i32, i32, i32*, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @extract_unsigned_integer(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
