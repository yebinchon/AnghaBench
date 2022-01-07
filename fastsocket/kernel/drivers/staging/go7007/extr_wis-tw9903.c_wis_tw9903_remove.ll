; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_wis-tw9903.c_wis_tw9903_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_wis-tw9903.c_wis_tw9903_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.wis_tw9903 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @wis_tw9903_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wis_tw9903_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.wis_tw9903*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.wis_tw9903* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.wis_tw9903* %5, %struct.wis_tw9903** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = call i32 @i2c_set_clientdata(%struct.i2c_client* %6, i32* null)
  %8 = load %struct.wis_tw9903*, %struct.wis_tw9903** %3, align 8
  %9 = call i32 @kfree(%struct.wis_tw9903* %8)
  ret i32 0
}

declare dso_local %struct.wis_tw9903* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, i32*) #1

declare dso_local i32 @kfree(%struct.wis_tw9903*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
