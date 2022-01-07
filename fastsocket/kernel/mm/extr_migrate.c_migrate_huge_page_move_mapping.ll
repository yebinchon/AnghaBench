; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_migrate.c_migrate_huge_page_move_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_migrate.c_migrate_huge_page_move_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32, i32 }
%struct.page = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @migrate_huge_page_move_mapping(%struct.address_space* %0, %struct.page* %1, %struct.page* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  store %struct.address_space* %0, %struct.address_space** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store %struct.page* %2, %struct.page** %7, align 8
  %10 = load %struct.address_space*, %struct.address_space** %5, align 8
  %11 = icmp ne %struct.address_space* %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = load %struct.page*, %struct.page** %7, align 8
  %14 = call i32 @page_count(%struct.page* %13)
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %73

19:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %73

20:                                               ; preds = %3
  %21 = load %struct.address_space*, %struct.address_space** %5, align 8
  %22 = getelementptr inbounds %struct.address_space, %struct.address_space* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_irq(i32* %22)
  %24 = load %struct.address_space*, %struct.address_space** %5, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 1
  %26 = load %struct.page*, %struct.page** %7, align 8
  %27 = call i32 @page_index(%struct.page* %26)
  %28 = call i8** @radix_tree_lookup_slot(i32* %25, i32 %27)
  store i8** %28, i8*** %9, align 8
  %29 = load %struct.page*, %struct.page** %7, align 8
  %30 = call i32 @page_has_private(%struct.page* %29)
  %31 = add nsw i32 2, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.page*, %struct.page** %7, align 8
  %33 = call i32 @page_count(%struct.page* %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %20
  %37 = load i8**, i8*** %9, align 8
  %38 = call i64 @radix_tree_deref_slot(i8** %37)
  %39 = inttoptr i64 %38 to %struct.page*
  %40 = load %struct.page*, %struct.page** %7, align 8
  %41 = icmp ne %struct.page* %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36, %20
  %43 = load %struct.address_space*, %struct.address_space** %5, align 8
  %44 = getelementptr inbounds %struct.address_space, %struct.address_space* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock_irq(i32* %44)
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %73

48:                                               ; preds = %36
  %49 = load %struct.page*, %struct.page** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @page_freeze_refs(%struct.page* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load %struct.address_space*, %struct.address_space** %5, align 8
  %55 = getelementptr inbounds %struct.address_space, %struct.address_space* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_irq(i32* %55)
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %73

59:                                               ; preds = %48
  %60 = load %struct.page*, %struct.page** %6, align 8
  %61 = call i32 @get_page(%struct.page* %60)
  %62 = load i8**, i8*** %9, align 8
  %63 = load %struct.page*, %struct.page** %6, align 8
  %64 = call i32 @radix_tree_replace_slot(i8** %62, %struct.page* %63)
  %65 = load %struct.page*, %struct.page** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @page_unfreeze_refs(%struct.page* %65, i32 %66)
  %68 = load %struct.page*, %struct.page** %7, align 8
  %69 = call i32 @__put_page(%struct.page* %68)
  %70 = load %struct.address_space*, %struct.address_space** %5, align 8
  %71 = getelementptr inbounds %struct.address_space, %struct.address_space* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock_irq(i32* %71)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %59, %53, %42, %19, %16
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i8** @radix_tree_lookup_slot(i32*, i32) #1

declare dso_local i32 @page_index(%struct.page*) #1

declare dso_local i32 @page_has_private(%struct.page*) #1

declare dso_local i64 @radix_tree_deref_slot(i8**) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @page_freeze_refs(%struct.page*, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @radix_tree_replace_slot(i8**, %struct.page*) #1

declare dso_local i32 @page_unfreeze_refs(%struct.page*, i32) #1

declare dso_local i32 @__put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
