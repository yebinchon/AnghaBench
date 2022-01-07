; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_add_mem_for_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_add_mem_for_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_8__, %struct.elt_loc_list*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.elt_loc_list = type { i32, %struct.elt_loc_list* }

@first_containing_mem = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_9__*, i32)* @add_mem_for_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_mem_for_addr(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.elt_loc_list*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %10 = load %struct.elt_loc_list*, %struct.elt_loc_list** %9, align 8
  store %struct.elt_loc_list* %10, %struct.elt_loc_list** %7, align 8
  br label %11

11:                                               ; preds = %30, %3
  %12 = load %struct.elt_loc_list*, %struct.elt_loc_list** %7, align 8
  %13 = icmp ne %struct.elt_loc_list* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = load %struct.elt_loc_list*, %struct.elt_loc_list** %7, align 8
  %16 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @MEM_P(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.elt_loc_list*, %struct.elt_loc_list** %7, align 8
  %22 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @XEXP(i32 %23, i32 0)
  %25 = call %struct.TYPE_9__* @CSELIB_VAL_PTR(i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = icmp eq %struct.TYPE_9__* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %63

29:                                               ; preds = %20, %14
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.elt_loc_list*, %struct.elt_loc_list** %7, align 8
  %32 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %31, i32 0, i32 1
  %33 = load %struct.elt_loc_list*, %struct.elt_loc_list** %32, align 8
  store %struct.elt_loc_list* %33, %struct.elt_loc_list** %7, align 8
  br label %11

34:                                               ; preds = %11
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = call i32 @new_elt_list(i32 %37, %struct.TYPE_9__* %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load %struct.elt_loc_list*, %struct.elt_loc_list** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @replace_equiv_address_nv(i32 %45, i32 %49)
  %51 = call %struct.elt_loc_list* @new_elt_loc_list(%struct.elt_loc_list* %44, i32 %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  store %struct.elt_loc_list* %51, %struct.elt_loc_list** %53, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = icmp eq %struct.TYPE_9__* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %34
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** @first_containing_mem, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %61, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** @first_containing_mem, align 8
  br label %63

63:                                               ; preds = %28, %58, %34
  ret void
}

declare dso_local i64 @MEM_P(i32) #1

declare dso_local %struct.TYPE_9__* @CSELIB_VAL_PTR(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @new_elt_list(i32, %struct.TYPE_9__*) #1

declare dso_local %struct.elt_loc_list* @new_elt_loc_list(%struct.elt_loc_list*, i32) #1

declare dso_local i32 @replace_equiv_address_nv(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
