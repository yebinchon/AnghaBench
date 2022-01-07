; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nls/extr_nls_base.c_register_nls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nls/extr_nls_base.c_register_nls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { %struct.nls_table* }

@tables = common dso_local global %struct.nls_table* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@nls_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_nls(%struct.nls_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nls_table*, align 8
  %4 = alloca %struct.nls_table**, align 8
  store %struct.nls_table* %0, %struct.nls_table** %3, align 8
  store %struct.nls_table** @tables, %struct.nls_table*** %4, align 8
  %5 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  %6 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %5, i32 0, i32 0
  %7 = load %struct.nls_table*, %struct.nls_table** %6, align 8
  %8 = icmp ne %struct.nls_table* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = call i32 @spin_lock(i32* @nls_lock)
  br label %14

14:                                               ; preds = %27, %12
  %15 = load %struct.nls_table**, %struct.nls_table*** %4, align 8
  %16 = load %struct.nls_table*, %struct.nls_table** %15, align 8
  %17 = icmp ne %struct.nls_table* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  %20 = load %struct.nls_table**, %struct.nls_table*** %4, align 8
  %21 = load %struct.nls_table*, %struct.nls_table** %20, align 8
  %22 = icmp eq %struct.nls_table* %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = call i32 @spin_unlock(i32* @nls_lock)
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %37

27:                                               ; preds = %18
  %28 = load %struct.nls_table**, %struct.nls_table*** %4, align 8
  %29 = load %struct.nls_table*, %struct.nls_table** %28, align 8
  %30 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %29, i32 0, i32 0
  store %struct.nls_table** %30, %struct.nls_table*** %4, align 8
  br label %14

31:                                               ; preds = %14
  %32 = load %struct.nls_table*, %struct.nls_table** @tables, align 8
  %33 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  %34 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %33, i32 0, i32 0
  store %struct.nls_table* %32, %struct.nls_table** %34, align 8
  %35 = load %struct.nls_table*, %struct.nls_table** %3, align 8
  store %struct.nls_table* %35, %struct.nls_table** @tables, align 8
  %36 = call i32 @spin_unlock(i32* @nls_lock)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %31, %23, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
