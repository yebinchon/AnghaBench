; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_table.c_dn_fib_table_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_table.c_dn_fib_table_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_fib_table = type { i64 }
%struct.flowi = type { i64, i32 }
%struct.dn_fib_res = type { i64, i32, i32 }
%struct.dn_zone = type { i32, %struct.dn_zone* }
%struct.dn_hash = type { %struct.dn_zone* }
%struct.dn_fib_node = type { i32, i64, i32, i32, %struct.dn_fib_node* }

@dn_fib_tables_lock = common dso_local global i32 0, align 4
@DN_S_ACCESSED = common dso_local global i32 0, align 4
@DN_S_ZOMBIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_fib_table*, %struct.flowi*, %struct.dn_fib_res*)* @dn_fib_table_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_fib_table_lookup(%struct.dn_fib_table* %0, %struct.flowi* %1, %struct.dn_fib_res* %2) #0 {
  %4 = alloca %struct.dn_fib_table*, align 8
  %5 = alloca %struct.flowi*, align 8
  %6 = alloca %struct.dn_fib_res*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dn_zone*, align 8
  %9 = alloca %struct.dn_hash*, align 8
  %10 = alloca %struct.dn_fib_node*, align 8
  %11 = alloca i32, align 4
  store %struct.dn_fib_table* %0, %struct.dn_fib_table** %4, align 8
  store %struct.flowi* %1, %struct.flowi** %5, align 8
  store %struct.dn_fib_res* %2, %struct.dn_fib_res** %6, align 8
  %12 = load %struct.dn_fib_table*, %struct.dn_fib_table** %4, align 8
  %13 = getelementptr inbounds %struct.dn_fib_table, %struct.dn_fib_table* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.dn_hash*
  store %struct.dn_hash* %15, %struct.dn_hash** %9, align 8
  %16 = call i32 @read_lock(i32* @dn_fib_tables_lock)
  %17 = load %struct.dn_hash*, %struct.dn_hash** %9, align 8
  %18 = getelementptr inbounds %struct.dn_hash, %struct.dn_hash* %17, i32 0, i32 0
  %19 = load %struct.dn_zone*, %struct.dn_zone** %18, align 8
  store %struct.dn_zone* %19, %struct.dn_zone** %8, align 8
  br label %20

20:                                               ; preds = %110, %3
  %21 = load %struct.dn_zone*, %struct.dn_zone** %8, align 8
  %22 = icmp ne %struct.dn_zone* %21, null
  br i1 %22, label %23, label %114

23:                                               ; preds = %20
  %24 = load %struct.flowi*, %struct.flowi** %5, align 8
  %25 = getelementptr inbounds %struct.flowi, %struct.flowi* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.dn_zone*, %struct.dn_zone** %8, align 8
  %28 = call i32 @dz_key(i32 %26, %struct.dn_zone* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.dn_zone*, %struct.dn_zone** %8, align 8
  %31 = call %struct.dn_fib_node* @dz_chain(i32 %29, %struct.dn_zone* %30)
  store %struct.dn_fib_node* %31, %struct.dn_fib_node** %10, align 8
  br label %32

32:                                               ; preds = %105, %23
  %33 = load %struct.dn_fib_node*, %struct.dn_fib_node** %10, align 8
  %34 = icmp ne %struct.dn_fib_node* %33, null
  br i1 %34, label %35, label %109

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.dn_fib_node*, %struct.dn_fib_node** %10, align 8
  %38 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dn_key_eq(i32 %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.dn_fib_node*, %struct.dn_fib_node** %10, align 8
  %45 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @dn_key_leq(i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %109

50:                                               ; preds = %42
  br label %105

51:                                               ; preds = %35
  %52 = load i32, i32* @DN_S_ACCESSED, align 4
  %53 = load %struct.dn_fib_node*, %struct.dn_fib_node** %10, align 8
  %54 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.dn_fib_node*, %struct.dn_fib_node** %10, align 8
  %58 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DN_S_ZOMBIE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %105

64:                                               ; preds = %51
  %65 = load %struct.dn_fib_node*, %struct.dn_fib_node** %10, align 8
  %66 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.flowi*, %struct.flowi** %5, align 8
  %69 = getelementptr inbounds %struct.flowi, %struct.flowi* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %105

73:                                               ; preds = %64
  %74 = load %struct.dn_fib_node*, %struct.dn_fib_node** %10, align 8
  %75 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.dn_fib_node*, %struct.dn_fib_node** %10, align 8
  %78 = call i32 @DN_FIB_INFO(%struct.dn_fib_node* %77)
  %79 = load %struct.flowi*, %struct.flowi** %5, align 8
  %80 = load %struct.dn_fib_res*, %struct.dn_fib_res** %6, align 8
  %81 = call i32 @dn_fib_semantic_match(i32 %76, i32 %78, %struct.flowi* %79, %struct.dn_fib_res* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %73
  %85 = load %struct.dn_fib_node*, %struct.dn_fib_node** %10, align 8
  %86 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.dn_fib_res*, %struct.dn_fib_res** %6, align 8
  %89 = getelementptr inbounds %struct.dn_fib_res, %struct.dn_fib_res* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.dn_fib_node*, %struct.dn_fib_node** %10, align 8
  %91 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.dn_fib_res*, %struct.dn_fib_res** %6, align 8
  %94 = getelementptr inbounds %struct.dn_fib_res, %struct.dn_fib_res* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.dn_zone*, %struct.dn_zone** %8, align 8
  %96 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.dn_fib_res*, %struct.dn_fib_res** %6, align 8
  %99 = getelementptr inbounds %struct.dn_fib_res, %struct.dn_fib_res* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  br label %115

100:                                              ; preds = %73
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %115

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104, %72, %63, %50
  %106 = load %struct.dn_fib_node*, %struct.dn_fib_node** %10, align 8
  %107 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %106, i32 0, i32 4
  %108 = load %struct.dn_fib_node*, %struct.dn_fib_node** %107, align 8
  store %struct.dn_fib_node* %108, %struct.dn_fib_node** %10, align 8
  br label %32

109:                                              ; preds = %49, %32
  br label %110

110:                                              ; preds = %109
  %111 = load %struct.dn_zone*, %struct.dn_zone** %8, align 8
  %112 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %111, i32 0, i32 1
  %113 = load %struct.dn_zone*, %struct.dn_zone** %112, align 8
  store %struct.dn_zone* %113, %struct.dn_zone** %8, align 8
  br label %20

114:                                              ; preds = %20
  store i32 1, i32* %7, align 4
  br label %115

115:                                              ; preds = %114, %103, %84
  %116 = call i32 @read_unlock(i32* @dn_fib_tables_lock)
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @dz_key(i32, %struct.dn_zone*) #1

declare dso_local %struct.dn_fib_node* @dz_chain(i32, %struct.dn_zone*) #1

declare dso_local i32 @dn_key_eq(i32, i32) #1

declare dso_local i64 @dn_key_leq(i32, i32) #1

declare dso_local i32 @dn_fib_semantic_match(i32, i32, %struct.flowi*, %struct.dn_fib_res*) #1

declare dso_local i32 @DN_FIB_INFO(%struct.dn_fib_node*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
