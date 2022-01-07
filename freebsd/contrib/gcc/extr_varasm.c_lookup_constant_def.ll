; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_lookup_constant_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_lookup_constant_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constant_descriptor_tree = type { i32, i32, i32 }

@const_desc_htab = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lookup_constant_def(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.constant_descriptor_tree*, align 8
  %4 = alloca %struct.constant_descriptor_tree, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = getelementptr inbounds %struct.constant_descriptor_tree, %struct.constant_descriptor_tree* %4, i32 0, i32 2
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @const_hash_1(i32 %7)
  %9 = getelementptr inbounds %struct.constant_descriptor_tree, %struct.constant_descriptor_tree* %4, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @const_desc_htab, align 4
  %11 = getelementptr inbounds %struct.constant_descriptor_tree, %struct.constant_descriptor_tree* %4, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.constant_descriptor_tree* @htab_find_with_hash(i32 %10, %struct.constant_descriptor_tree* %4, i32 %12)
  store %struct.constant_descriptor_tree* %13, %struct.constant_descriptor_tree** %3, align 8
  %14 = load %struct.constant_descriptor_tree*, %struct.constant_descriptor_tree** %3, align 8
  %15 = icmp ne %struct.constant_descriptor_tree* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.constant_descriptor_tree*, %struct.constant_descriptor_tree** %3, align 8
  %18 = getelementptr inbounds %struct.constant_descriptor_tree, %struct.constant_descriptor_tree* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  br label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @NULL_RTX, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i32 [ %19, %16 ], [ %21, %20 ]
  ret i32 %23
}

declare dso_local i32 @const_hash_1(i32) #1

declare dso_local %struct.constant_descriptor_tree* @htab_find_with_hash(i32, %struct.constant_descriptor_tree*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
