; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_broadsheetfb.c_broadsheet_write_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_broadsheetfb.c_broadsheet_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.broadsheetfb_par = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*)* }

@BS_CS = common dso_local global i32 0, align 4
@BS_CMD_WR_REG = common dso_local global i32 0, align 4
@BS_DC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.broadsheetfb_par*, i32, i32)* @broadsheet_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @broadsheet_write_reg(%struct.broadsheetfb_par* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.broadsheetfb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.broadsheetfb_par* %0, %struct.broadsheetfb_par** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %8 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32 (%struct.broadsheetfb_par*)*, i32 (%struct.broadsheetfb_par*)** %10, align 8
  %12 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %13 = call i32 %11(%struct.broadsheetfb_par* %12)
  %14 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %15 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*, i32, i32)** %17, align 8
  %19 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %20 = load i32, i32* @BS_CS, align 4
  %21 = call i32 %18(%struct.broadsheetfb_par* %19, i32 %20, i32 0)
  %22 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %23 = load i32, i32* @BS_CMD_WR_REG, align 4
  %24 = call i32 @broadsheet_issue_cmd(%struct.broadsheetfb_par* %22, i32 %23)
  %25 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %26 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*, i32, i32)** %28, align 8
  %30 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %31 = load i32, i32* @BS_DC, align 4
  %32 = call i32 %29(%struct.broadsheetfb_par* %30, i32 %31, i32 1)
  %33 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @broadsheet_issue_data(%struct.broadsheetfb_par* %33, i32 %34)
  %36 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @broadsheet_issue_data(%struct.broadsheetfb_par* %36, i32 %37)
  %39 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %40 = getelementptr inbounds %struct.broadsheetfb_par, %struct.broadsheetfb_par* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.broadsheetfb_par*, i32, i32)*, i32 (%struct.broadsheetfb_par*, i32, i32)** %42, align 8
  %44 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %4, align 8
  %45 = load i32, i32* @BS_CS, align 4
  %46 = call i32 %43(%struct.broadsheetfb_par* %44, i32 %45, i32 1)
  ret void
}

declare dso_local i32 @broadsheet_issue_cmd(%struct.broadsheetfb_par*, i32) #1

declare dso_local i32 @broadsheet_issue_data(%struct.broadsheetfb_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
