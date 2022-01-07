; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_broadsheetfb.c_broadsheet_send_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_broadsheetfb.c_broadsheet_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.broadsheetfb_par = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*)* }

@BS_CS = common dso_local global i32 0, align 4
@BS_DC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.broadsheetfb_par*, i32)* @broadsheet_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @broadsheet_send_command(%struct.broadsheetfb_par* %0, i32 %1) #0 {
  %3 = alloca %struct.broadsheetfb_par*, align 8
  %4 = alloca i32, align 4
  store %struct.broadsheetfb_par* %0, %struct.broadsheetfb_par** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %3, align 8
  %6 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32 (%struct.broadsheetfb_par*)*, i32 (%struct.broadsheetfb_par*)** %8, align 8
  %10 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %3, align 8
  %11 = call i32 %9(%struct.broadsheetfb_par* %10)
  %12 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %3, align 8
  %13 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*, i32, i32)** %15, align 8
  %17 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %3, align 8
  %18 = load i32, i32* @BS_CS, align 4
  %19 = call i32 %16(%struct.broadsheetfb_par* %17, i32 %18, i32 0)
  %20 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @broadsheet_issue_cmd(%struct.broadsheetfb_par* %20, i32 %21)
  %23 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %3, align 8
  %24 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*, i32, i32)** %26, align 8
  %28 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %3, align 8
  %29 = load i32, i32* @BS_DC, align 4
  %30 = call i32 %27(%struct.broadsheetfb_par* %28, i32 %29, i32 1)
  %31 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %3, align 8
  %32 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*, i32, i32)** %34, align 8
  %36 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %3, align 8
  %37 = load i32, i32* @BS_CS, align 4
  %38 = call i32 %35(%struct.broadsheetfb_par* %36, i32 %37, i32 1)
  ret void
}

declare dso_local i32 @broadsheet_issue_cmd(%struct.broadsheetfb_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
