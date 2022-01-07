; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_OP_SEG.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_OP_SEG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@w_mode = common dso_local global i32 0, align 4
@names_seg = common dso_local global i32* null, align 8
@modrm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @OP_SEG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OP_SEG(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @w_mode, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32*, i32** @names_seg, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 0), align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @oappend(i32 %12)
  br label %25

14:                                               ; preds = %2
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 8
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  br label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @w_mode, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @OP_E(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %8
  ret void
}

declare dso_local i32 @oappend(i32) #1

declare dso_local i32 @OP_E(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
