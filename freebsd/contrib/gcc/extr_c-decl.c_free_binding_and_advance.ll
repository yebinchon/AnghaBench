; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_free_binding_and_advance.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_free_binding_and_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_binding = type { %struct.c_binding* }

@binding_freelist = common dso_local global %struct.c_binding* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.c_binding* (%struct.c_binding*)* @free_binding_and_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.c_binding* @free_binding_and_advance(%struct.c_binding* %0) #0 {
  %2 = alloca %struct.c_binding*, align 8
  %3 = alloca %struct.c_binding*, align 8
  store %struct.c_binding* %0, %struct.c_binding** %2, align 8
  %4 = load %struct.c_binding*, %struct.c_binding** %2, align 8
  %5 = getelementptr inbounds %struct.c_binding, %struct.c_binding* %4, i32 0, i32 0
  %6 = load %struct.c_binding*, %struct.c_binding** %5, align 8
  store %struct.c_binding* %6, %struct.c_binding** %3, align 8
  %7 = load %struct.c_binding*, %struct.c_binding** %2, align 8
  %8 = call i32 @memset(%struct.c_binding* %7, i32 0, i32 8)
  %9 = load %struct.c_binding*, %struct.c_binding** @binding_freelist, align 8
  %10 = load %struct.c_binding*, %struct.c_binding** %2, align 8
  %11 = getelementptr inbounds %struct.c_binding, %struct.c_binding* %10, i32 0, i32 0
  store %struct.c_binding* %9, %struct.c_binding** %11, align 8
  %12 = load %struct.c_binding*, %struct.c_binding** %2, align 8
  store %struct.c_binding* %12, %struct.c_binding** @binding_freelist, align 8
  %13 = load %struct.c_binding*, %struct.c_binding** %3, align 8
  ret %struct.c_binding* %13
}

declare dso_local i32 @memset(%struct.c_binding*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
