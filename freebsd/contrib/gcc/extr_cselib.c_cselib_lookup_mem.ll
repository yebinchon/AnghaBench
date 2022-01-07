; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_cselib_lookup_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_cselib_lookup_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.elt_list* }
%struct.TYPE_8__ = type { i32 }
%struct.elt_list = type { %struct.TYPE_9__*, %struct.elt_list* }

@BLKmode = common dso_local global i32 0, align 4
@cselib_record_memory = common dso_local global i32 0, align 4
@flag_float_store = common dso_local global i64 0, align 8
@next_unknown_value = common dso_local global i32 0, align 4
@cselib_hash_table = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32, i32)* @cselib_lookup_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @cselib_lookup_mem(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.elt_list*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @GET_MODE(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @MEM_VOLATILE_P(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @BLKmode, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @cselib_record_memory, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @FLOAT_MODE_P(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i64, i64* @flag_float_store, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %20, %16, %2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %92

31:                                               ; preds = %27, %23
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @XEXP(i32 %32, i32 0)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call %struct.TYPE_9__* @cselib_lookup(i32 %33, i32 %34, i32 %35)
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %8, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = icmp ne %struct.TYPE_9__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %92

40:                                               ; preds = %31
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load %struct.elt_list*, %struct.elt_list** %42, align 8
  store %struct.elt_list* %43, %struct.elt_list** %10, align 8
  br label %44

44:                                               ; preds = %62, %40
  %45 = load %struct.elt_list*, %struct.elt_list** %10, align 8
  %46 = icmp ne %struct.elt_list* %45, null
  br i1 %46, label %47, label %66

47:                                               ; preds = %44
  %48 = load %struct.elt_list*, %struct.elt_list** %10, align 8
  %49 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @GET_MODE(i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = load %struct.elt_list*, %struct.elt_list** %10, align 8
  %59 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %3, align 8
  br label %92

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.elt_list*, %struct.elt_list** %10, align 8
  %64 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %63, i32 0, i32 1
  %65 = load %struct.elt_list*, %struct.elt_list** %64, align 8
  store %struct.elt_list* %65, %struct.elt_list** %10, align 8
  br label %44

66:                                               ; preds = %44
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %92

70:                                               ; preds = %66
  %71 = load i32, i32* @next_unknown_value, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* @next_unknown_value, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call %struct.TYPE_9__* @new_cselib_val(i32 %72, i32 %73)
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %9, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @add_mem_for_addr(%struct.TYPE_9__* %75, %struct.TYPE_9__* %76, i32 %77)
  %79 = load i32, i32* @cselib_hash_table, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @wrap_constant(i32 %80, i32 %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @INSERT, align 4
  %87 = call i8** @htab_find_slot_with_hash(i32 %79, i32 %82, i32 %85, i32 %86)
  store i8** %87, i8*** %7, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %89 = bitcast %struct.TYPE_9__* %88 to i8*
  %90 = load i8**, i8*** %7, align 8
  store i8* %89, i8** %90, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %91, %struct.TYPE_9__** %3, align 8
  br label %92

92:                                               ; preds = %70, %69, %57, %39, %30
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %93
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @MEM_VOLATILE_P(i32) #1

declare dso_local i64 @FLOAT_MODE_P(i32) #1

declare dso_local %struct.TYPE_9__* @cselib_lookup(i32, i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local %struct.TYPE_9__* @new_cselib_val(i32, i32) #1

declare dso_local i32 @add_mem_for_addr(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

declare dso_local i8** @htab_find_slot_with_hash(i32, i32, i32, i32) #1

declare dso_local i32 @wrap_constant(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
