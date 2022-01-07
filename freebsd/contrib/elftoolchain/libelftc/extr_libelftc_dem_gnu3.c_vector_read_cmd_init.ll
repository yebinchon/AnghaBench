; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_vector_read_cmd_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_vector_read_cmd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_read_cmd = type { i32, i32*, i64 }

@VECTOR_DEF_CAPACITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vector_read_cmd*)* @vector_read_cmd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vector_read_cmd_init(%struct.vector_read_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vector_read_cmd*, align 8
  store %struct.vector_read_cmd* %0, %struct.vector_read_cmd** %3, align 8
  %4 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %3, align 8
  %5 = icmp eq %struct.vector_read_cmd* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

7:                                                ; preds = %1
  %8 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @VECTOR_DEF_CAPACITY, align 4
  %11 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = trunc i64 %17 to i32
  %19 = call i32* @malloc(i32 %18)
  %20 = load %struct.vector_read_cmd*, %struct.vector_read_cmd** %3, align 8
  %21 = getelementptr inbounds %struct.vector_read_cmd, %struct.vector_read_cmd* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = icmp eq i32* %19, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %25

24:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23, %6
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
