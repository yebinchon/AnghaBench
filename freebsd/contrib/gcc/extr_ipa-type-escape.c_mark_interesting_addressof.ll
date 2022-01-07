; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_mark_interesting_addressof.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_mark_interesting_addressof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@uid_to_addressof_down_map = common dso_local global i32 0, align 4
@ipa_obstack = common dso_local global i32 0, align 4
@uid_to_addressof_up_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @mark_interesting_addressof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_interesting_addressof(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @get_canon_type(i32 %9, i32 0, i32 0)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @get_canon_type(i32 %11, i32 0, i32 0)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %2
  br label %71

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @TYPE_UID(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @TYPE_UID(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @ipa_type_escape_star_count_of_interesting_type(i32 %24)
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @gcc_assert(i32 %27)
  %29 = load i32, i32* @uid_to_addressof_down_map, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call %struct.TYPE_3__* @splay_tree_lookup(i32 %29, i32 %30)
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %8, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %19
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %7, align 8
  br label %45

38:                                               ; preds = %19
  %39 = call i64 @BITMAP_ALLOC(i32* @ipa_obstack)
  store i64 %39, i64* %7, align 8
  %40 = load i32, i32* @uid_to_addressof_down_map, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i64, i64* %7, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @splay_tree_insert(i32 %40, i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %38, %34
  %46 = load i64, i64* %7, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @TYPE_UID(i32 %47)
  %49 = call i32 @bitmap_set_bit(i64 %46, i32 %48)
  %50 = load i32, i32* @uid_to_addressof_up_map, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call %struct.TYPE_3__* @splay_tree_lookup(i32 %50, i32 %51)
  store %struct.TYPE_3__* %52, %struct.TYPE_3__** %8, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %54 = icmp ne %struct.TYPE_3__* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %7, align 8
  br label %66

59:                                               ; preds = %45
  %60 = call i64 @BITMAP_ALLOC(i32* @ipa_obstack)
  store i64 %60, i64* %7, align 8
  %61 = load i32, i32* @uid_to_addressof_up_map, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i64, i64* %7, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @splay_tree_insert(i32 %61, i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %59, %55
  %67 = load i64, i64* %7, align 8
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @TYPE_UID(i32 %68)
  %70 = call i32 @bitmap_set_bit(i64 %67, i32 %69)
  br label %71

71:                                               ; preds = %66, %18
  ret void
}

declare dso_local i32 @get_canon_type(i32, i32, i32) #1

declare dso_local i32 @TYPE_UID(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @ipa_type_escape_star_count_of_interesting_type(i32) #1

declare dso_local %struct.TYPE_3__* @splay_tree_lookup(i32, i32) #1

declare dso_local i64 @BITMAP_ALLOC(i32*) #1

declare dso_local i32 @splay_tree_insert(i32, i32, i32) #1

declare dso_local i32 @bitmap_set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
