; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sscape.c_host_command2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sscape.c_host_command2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sscape_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sscape_info*, i32, i32)* @host_command2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @host_command2(%struct.sscape_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sscape_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [10 x i8], align 1
  store %struct.sscape_info* %0, %struct.sscape_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 255
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  store i8 %10, i8* %11, align 1
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 255
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 1
  store i8 %14, i8* %15, align 1
  %16 = load %struct.sscape_info*, %struct.sscape_info** %4, align 8
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %18 = call i32 @host_write(%struct.sscape_info* %16, i8* %17, i32 2)
  ret i32 %18
}

declare dso_local i32 @host_write(%struct.sscape_info*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
