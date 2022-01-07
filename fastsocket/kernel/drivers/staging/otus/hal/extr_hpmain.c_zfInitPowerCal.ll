; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfInitPowerCal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfInitPowerCal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfInitPowerCal(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i32 (i32, i32, ...) bitcast (i32 (...)* @reg_write to i32 (i32, i32, ...)*)(i32 39228, i32 127)
  %4 = call i32 (i32, i32, ...) bitcast (i32 (...)* @reg_write to i32 (i32, i32, ...)*)(i32 39220, i32 1061109567)
  %5 = call i32 (i32, i32, ...) bitcast (i32 (...)* @reg_write to i32 (i32, i32, ...)*)(i32 39224, i32 1061109567)
  %6 = call i32 (i32, i32, ...) bitcast (i32 (...)* @reg_write to i32 (i32, i32, ...)*)(i32 41524, i32 1061109567)
  %7 = call i32 (i32, i32, ...) bitcast (i32 (...)* @reg_write to i32 (i32, i32, ...)*)(i32 41528, i32 1061109567)
  %8 = call i32 (i32, i32, ...) bitcast (i32 (...)* @reg_write to i32 (i32, i32, ...)*)(i32 41868, i32 1061109567)
  %9 = call i32 (i32, i32, ...) bitcast (i32 (...)* @reg_write to i32 (i32, i32, ...)*)(i32 41872, i32 1061109567)
  %10 = call i32 (i32, i32, ...) bitcast (i32 (...)* @reg_write to i32 (i32, i32, ...)*)(i32 41932, i32 1061109567)
  %11 = call i32 (i32, i32, ...) bitcast (i32 (...)* @reg_write to i32 (i32, i32, ...)*)(i32 41936, i32 1061109567)
  %12 = call i32 (i32, i32, ...) bitcast (i32 (...)* @reg_write to i32 (i32, i32, ...)*)(i32 41940, i32 1061109567)
  ret void
}

declare dso_local i32 @reg_write(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
