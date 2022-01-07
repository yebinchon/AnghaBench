; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_new_curse.c_noraw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_new_curse.c_noraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32 }

@RAW = common dso_local global i32 0, align 4
@Terminal = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@TIOCSETP = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@Intr = common dso_local global i8 0, align 1
@TCSETA = common dso_local global i32 0, align 4
@VEOF = common dso_local global i64 0, align 8
@VEOL = common dso_local global i64 0, align 8
@VINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @noraw() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @RAW, align 4
  %3 = xor i32 %2, -1
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Terminal, i32 0, i32 1), align 8
  %5 = and i32 %4, %3
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Terminal, i32 0, i32 1), align 8
  %6 = load i32, i32* @TIOCSETP, align 4
  %7 = call i32 @ioctl(i32 0, i32 %6, %struct.TYPE_3__* @Terminal)
  store i32 %7, i32* %1, align 4
  ret void
}

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
