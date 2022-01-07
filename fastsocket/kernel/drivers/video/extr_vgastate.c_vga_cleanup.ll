; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_vgastate.c_vga_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_vgastate.c_vga_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgastate = type { i32* }
%struct.regstate = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vgastate*)* @vga_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_cleanup(%struct.vgastate* %0) #0 {
  %2 = alloca %struct.vgastate*, align 8
  %3 = alloca %struct.regstate*, align 8
  store %struct.vgastate* %0, %struct.vgastate** %2, align 8
  %4 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %5 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %10 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = bitcast i32* %11 to %struct.regstate*
  store %struct.regstate* %12, %struct.regstate** %3, align 8
  %13 = load %struct.regstate*, %struct.regstate** %3, align 8
  %14 = getelementptr inbounds %struct.regstate, %struct.regstate* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @vfree(i32 %15)
  %17 = load %struct.regstate*, %struct.regstate** %3, align 8
  %18 = getelementptr inbounds %struct.regstate, %struct.regstate* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @vfree(i32 %19)
  %21 = load %struct.regstate*, %struct.regstate** %3, align 8
  %22 = getelementptr inbounds %struct.regstate, %struct.regstate* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @vfree(i32 %23)
  %25 = load %struct.regstate*, %struct.regstate** %3, align 8
  %26 = getelementptr inbounds %struct.regstate, %struct.regstate* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @vfree(i32 %27)
  %29 = load %struct.regstate*, %struct.regstate** %3, align 8
  %30 = getelementptr inbounds %struct.regstate, %struct.regstate* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @vfree(i32 %31)
  %33 = load %struct.regstate*, %struct.regstate** %3, align 8
  %34 = call i32 @kfree(%struct.regstate* %33)
  %35 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %36 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @kfree(%struct.regstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
