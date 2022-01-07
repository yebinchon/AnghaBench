; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_push_dummy_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_push_dummy_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.regcache = type { i32 }
%struct.value = type { i32 }

@I386_ESP_REGNUM = common dso_local global i32 0, align 4
@I386_EBP_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, i32, %struct.regcache*, i32, i32, %struct.value**, i32, i32, i32)* @i386_push_dummy_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i386_push_dummy_call(%struct.gdbarch* %0, i32 %1, %struct.regcache* %2, i32 %3, i32 %4, %struct.value** %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.gdbarch*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.regcache*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.value**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [4 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.regcache* %2, %struct.regcache** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.value** %5, %struct.value*** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %22 = load i32, i32* %14, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %20, align 4
  br label %24

24:                                               ; preds = %49, %9
  %25 = load i32, i32* %20, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %24
  %28 = load %struct.value**, %struct.value*** %15, align 8
  %29 = load i32, i32* %20, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.value*, %struct.value** %28, i64 %30
  %32 = load %struct.value*, %struct.value** %31, align 8
  %33 = call i32 @VALUE_ENCLOSING_TYPE(%struct.value* %32)
  %34 = call i32 @TYPE_LENGTH(i32 %33)
  store i32 %34, i32* %21, align 4
  %35 = load i32, i32* %21, align 4
  %36 = add nsw i32 %35, 3
  %37 = and i32 %36, -4
  %38 = load i32, i32* %16, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = load %struct.value**, %struct.value*** %15, align 8
  %42 = load i32, i32* %20, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.value*, %struct.value** %41, i64 %43
  %45 = load %struct.value*, %struct.value** %44, align 8
  %46 = call i8* @VALUE_CONTENTS_ALL(%struct.value* %45)
  %47 = load i32, i32* %21, align 4
  %48 = call i32 @write_memory(i32 %40, i8* %46, i32 %47)
  br label %49

49:                                               ; preds = %27
  %50 = load i32, i32* %20, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %20, align 4
  br label %24

52:                                               ; preds = %24
  %53 = load i32, i32* %17, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i32, i32* %16, align 4
  %57 = sub nsw i32 %56, 4
  store i32 %57, i32* %16, align 4
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 0
  %59 = load i32, i32* %18, align 4
  %60 = call i32 @store_unsigned_integer(i8* %58, i32 4, i32 %59)
  %61 = load i32, i32* %16, align 4
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 0
  %63 = call i32 @write_memory(i32 %61, i8* %62, i32 4)
  br label %64

64:                                               ; preds = %55, %52
  %65 = load i32, i32* %16, align 4
  %66 = sub nsw i32 %65, 4
  store i32 %66, i32* %16, align 4
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 0
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @store_unsigned_integer(i8* %67, i32 4, i32 %68)
  %70 = load i32, i32* %16, align 4
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 0
  %72 = call i32 @write_memory(i32 %70, i8* %71, i32 4)
  %73 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 0
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @store_unsigned_integer(i8* %73, i32 4, i32 %74)
  %76 = load %struct.regcache*, %struct.regcache** %12, align 8
  %77 = load i32, i32* @I386_ESP_REGNUM, align 4
  %78 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 0
  %79 = call i32 @regcache_cooked_write(%struct.regcache* %76, i32 %77, i8* %78)
  %80 = load %struct.regcache*, %struct.regcache** %12, align 8
  %81 = load i32, i32* @I386_EBP_REGNUM, align 4
  %82 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 0
  %83 = call i32 @regcache_cooked_write(%struct.regcache* %80, i32 %81, i8* %82)
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, 8
  ret i32 %85
}

declare dso_local i32 @TYPE_LENGTH(i32) #1

declare dso_local i32 @VALUE_ENCLOSING_TYPE(%struct.value*) #1

declare dso_local i32 @write_memory(i32, i8*, i32) #1

declare dso_local i8* @VALUE_CONTENTS_ALL(%struct.value*) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #1

declare dso_local i32 @regcache_cooked_write(%struct.regcache*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
