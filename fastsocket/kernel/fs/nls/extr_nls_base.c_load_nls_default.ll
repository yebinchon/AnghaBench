; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nls/extr_nls_base.c_load_nls_default.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nls/extr_nls_base.c_load_nls_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32 }

@CONFIG_NLS_DEFAULT = common dso_local global i32 0, align 4
@default_table = common dso_local global %struct.nls_table zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nls_table* @load_nls_default() #0 {
  %1 = alloca %struct.nls_table*, align 8
  %2 = alloca %struct.nls_table*, align 8
  %3 = load i32, i32* @CONFIG_NLS_DEFAULT, align 4
  %4 = call %struct.nls_table* @load_nls(i32 %3)
  store %struct.nls_table* %4, %struct.nls_table** %2, align 8
  %5 = load %struct.nls_table*, %struct.nls_table** %2, align 8
  %6 = icmp ne %struct.nls_table* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load %struct.nls_table*, %struct.nls_table** %2, align 8
  store %struct.nls_table* %8, %struct.nls_table** %1, align 8
  br label %10

9:                                                ; preds = %0
  store %struct.nls_table* @default_table, %struct.nls_table** %1, align 8
  br label %10

10:                                               ; preds = %9, %7
  %11 = load %struct.nls_table*, %struct.nls_table** %1, align 8
  ret %struct.nls_table* %11
}

declare dso_local %struct.nls_table* @load_nls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
