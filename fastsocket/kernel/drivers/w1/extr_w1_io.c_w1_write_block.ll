; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/extr_w1_io.c_w1_write_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/extr_w1_io.c_w1_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_master = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, i32*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @w1_write_block(%struct.w1_master* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.w1_master*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.w1_master* %0, %struct.w1_master** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %9 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %11, align 8
  %13 = icmp ne i32 (i32, i32*, i32)* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %3
  %15 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %16 = call i32 @w1_pre_write(%struct.w1_master* %15)
  %17 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %18 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %20, align 8
  %22 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %23 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 %21(i32 %26, i32* %27, i32 %28)
  br label %47

30:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @w1_write_8(%struct.w1_master* %36, i32 %41)
  br label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %31

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46, %14
  %48 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %49 = call i32 @w1_post_write(%struct.w1_master* %48)
  ret void
}

declare dso_local i32 @w1_pre_write(%struct.w1_master*) #1

declare dso_local i32 @w1_write_8(%struct.w1_master*, i32) #1

declare dso_local i32 @w1_post_write(%struct.w1_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
