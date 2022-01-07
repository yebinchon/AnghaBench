; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_idr_get_new_above_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_idr_get_new_above_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32 }
%struct.idr_layer = type { i32, i32* }

@MAX_LEVEL = common dso_local global i32 0, align 4
@IDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idr*, i8*, i32)* @idr_get_new_above_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idr_get_new_above_int(%struct.idr* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.idr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.idr* %0, %struct.idr** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @MAX_LEVEL, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca %struct.idr_layer*, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.idr*, %struct.idr** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @idr_get_empty_slot(%struct.idr* %14, i32 %15, %struct.idr_layer** %13)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %13, i64 0
  %21 = load %struct.idr_layer*, %struct.idr_layer** %20, align 16
  %22 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @IDR_MASK, align 4
  %26 = and i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = bitcast i8* %30 to %struct.idr_layer*
  %32 = call i32 @rcu_assign_pointer(i32 %29, %struct.idr_layer* %31)
  %33 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %13, i64 0
  %34 = load %struct.idr_layer*, %struct.idr_layer** %33, align 16
  %35 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @idr_mark_full(%struct.idr_layer** %13, i32 %38)
  br label %40

40:                                               ; preds = %19, %3
  %41 = load i32, i32* %9, align 4
  %42 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %42)
  ret i32 %41
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @idr_get_empty_slot(%struct.idr*, i32, %struct.idr_layer**) #2

declare dso_local i32 @rcu_assign_pointer(i32, %struct.idr_layer*) #2

declare dso_local i32 @idr_mark_full(%struct.idr_layer**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
