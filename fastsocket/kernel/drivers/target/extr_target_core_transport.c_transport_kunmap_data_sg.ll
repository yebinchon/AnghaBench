; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_kunmap_data_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_kunmap_data_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transport_kunmap_data_sg(%struct.se_cmd* %0) #0 {
  %2 = alloca %struct.se_cmd*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %2, align 8
  %3 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %4 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %27

8:                                                ; preds = %1
  %9 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %15 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @sg_page(i32 %16)
  %18 = call i32 @kunmap(i32 %17)
  br label %27

19:                                               ; preds = %8
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %22 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @vunmap(i32* %23)
  %25 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %26 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %20, %13, %7
  ret void
}

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @sg_page(i32) #1

declare dso_local i32 @vunmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
