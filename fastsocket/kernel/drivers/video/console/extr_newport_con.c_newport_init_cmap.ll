; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_newport_con.c_newport_init_cmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_newport_con.c_newport_init_cmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@npregs = common dso_local global i32 0, align 4
@color_table = common dso_local global i32* null, align 8
@default_red = common dso_local global i32* null, align 8
@default_grn = common dso_local global i32* null, align 8
@default_blu = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @newport_init_cmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @newport_init_cmap() #0 {
  %1 = alloca i16, align 2
  store i16 0, i16* %1, align 2
  br label %2

2:                                                ; preds = %33, %0
  %3 = load i16, i16* %1, align 2
  %4 = zext i16 %3 to i32
  %5 = icmp slt i32 %4, 16
  br i1 %5, label %6, label %36

6:                                                ; preds = %2
  %7 = load i32, i32* @npregs, align 4
  %8 = call i32 @newport_bfwait(i32 %7)
  %9 = load i32, i32* @npregs, align 4
  %10 = load i32*, i32** @color_table, align 8
  %11 = load i16, i16* %1, align 2
  %12 = zext i16 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @newport_cmap_setaddr(i32 %9, i32 %14)
  %16 = load i32, i32* @npregs, align 4
  %17 = load i32*, i32** @default_red, align 8
  %18 = load i16, i16* %1, align 2
  %19 = zext i16 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** @default_grn, align 8
  %23 = load i16, i16* %1, align 2
  %24 = zext i16 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** @default_blu, align 8
  %28 = load i16, i16* %1, align 2
  %29 = zext i16 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @newport_cmap_setrgb(i32 %16, i32 %21, i32 %26, i32 %31)
  br label %33

33:                                               ; preds = %6
  %34 = load i16, i16* %1, align 2
  %35 = add i16 %34, 1
  store i16 %35, i16* %1, align 2
  br label %2

36:                                               ; preds = %2
  ret void
}

declare dso_local i32 @newport_bfwait(i32) #1

declare dso_local i32 @newport_cmap_setaddr(i32, i32) #1

declare dso_local i32 @newport_cmap_setrgb(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
