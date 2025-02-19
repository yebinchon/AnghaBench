; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musb_gadget.c_musb_g_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musb_gadget.c_musb_g_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 (i32*)* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"unhandled RESUME transition (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @musb_g_resume(%struct.musb* %0) #0 {
  %2 = alloca %struct.musb*, align 8
  store %struct.musb* %0, %struct.musb** %2, align 8
  %3 = load %struct.musb*, %struct.musb** %2, align 8
  %4 = getelementptr inbounds %struct.musb, %struct.musb* %3, i32 0, i32 5
  store i64 0, i64* %4, align 8
  %5 = load %struct.musb*, %struct.musb** %2, align 8
  %6 = getelementptr inbounds %struct.musb, %struct.musb* %5, i32 0, i32 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %41 [
    i32 130, label %10
    i32 128, label %11
    i32 129, label %11
  ]

10:                                               ; preds = %1
  br label %45

11:                                               ; preds = %1, %1
  %12 = load %struct.musb*, %struct.musb** %2, align 8
  %13 = getelementptr inbounds %struct.musb, %struct.musb* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.musb*, %struct.musb** %2, align 8
  %15 = getelementptr inbounds %struct.musb, %struct.musb* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %40

18:                                               ; preds = %11
  %19 = load %struct.musb*, %struct.musb** %2, align 8
  %20 = getelementptr inbounds %struct.musb, %struct.musb* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (i32*)*, i32 (i32*)** %22, align 8
  %24 = icmp ne i32 (i32*)* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = load %struct.musb*, %struct.musb** %2, align 8
  %27 = getelementptr inbounds %struct.musb, %struct.musb* %26, i32 0, i32 1
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load %struct.musb*, %struct.musb** %2, align 8
  %30 = getelementptr inbounds %struct.musb, %struct.musb* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (i32*)*, i32 (i32*)** %32, align 8
  %34 = load %struct.musb*, %struct.musb** %2, align 8
  %35 = getelementptr inbounds %struct.musb, %struct.musb* %34, i32 0, i32 2
  %36 = call i32 %33(i32* %35)
  %37 = load %struct.musb*, %struct.musb** %2, align 8
  %38 = getelementptr inbounds %struct.musb, %struct.musb* %37, i32 0, i32 1
  %39 = call i32 @spin_lock(i32* %38)
  br label %40

40:                                               ; preds = %25, %18, %11
  br label %45

41:                                               ; preds = %1
  %42 = load %struct.musb*, %struct.musb** %2, align 8
  %43 = call i32 @otg_state_string(%struct.musb* %42)
  %44 = call i32 @WARNING(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %40, %10
  ret void
}

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARNING(i8*, i32) #1

declare dso_local i32 @otg_state_string(%struct.musb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
