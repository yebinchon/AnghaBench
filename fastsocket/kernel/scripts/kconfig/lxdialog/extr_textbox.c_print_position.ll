; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/lxdialog/extr_textbox.c_print_position.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/lxdialog/extr_textbox.c_print_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@dlg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@A_COLOR = common dso_local global i32 0, align 4
@page = common dso_local global i32 0, align 4
@buf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"(%3d%%)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @print_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_position(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dlg, i32 0, i32 0, i32 0), align 4
  %6 = call i32 @wattrset(i32* %4, i32 %5)
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dlg, i32 0, i32 0, i32 0), align 4
  %9 = load i32, i32* @A_COLOR, align 4
  %10 = and i32 %8, %9
  %11 = call i32 @wbkgdset(i32* %7, i32 %10)
  %12 = load i32, i32* @page, align 4
  %13 = load i32, i32* @buf, align 4
  %14 = sub nsw i32 %12, %13
  %15 = mul nsw i32 %14, 100
  %16 = load i32, i32* @buf, align 4
  %17 = call i32 @strlen(i32 %16)
  %18 = sdiv i32 %15, %17
  store i32 %18, i32* %3, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = call i64 @getmaxy(i32* %20)
  %22 = sub nsw i64 %21, 3
  %23 = load i32*, i32** %2, align 8
  %24 = call i64 @getmaxx(i32* %23)
  %25 = sub nsw i64 %24, 9
  %26 = call i32 @wmove(i32* %19, i64 %22, i64 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @wprintw(i32* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %28)
  ret void
}

declare dso_local i32 @wattrset(i32*, i32) #1

declare dso_local i32 @wbkgdset(i32*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @wmove(i32*, i64, i64) #1

declare dso_local i64 @getmaxy(i32*) #1

declare dso_local i64 @getmaxx(i32*) #1

declare dso_local i32 @wprintw(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
