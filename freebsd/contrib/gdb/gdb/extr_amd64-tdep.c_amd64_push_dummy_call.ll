; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-tdep.c_amd64_push_dummy_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-tdep.c_amd64_push_dummy_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.regcache = type { i32 }
%struct.value = type { i32 }

@AMD64_RDI_REGNUM = common dso_local global i32 0, align 4
@AMD64_RSP_REGNUM = common dso_local global i32 0, align 4
@AMD64_RBP_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, i32, %struct.regcache*, i32, i32, %struct.value**, i32, i32, i32)* @amd64_push_dummy_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd64_push_dummy_call(%struct.gdbarch* %0, i32 %1, %struct.regcache* %2, i32 %3, i32 %4, %struct.value** %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.gdbarch*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.regcache*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.value**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [8 x i8], align 1
  store %struct.gdbarch* %0, %struct.gdbarch** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.regcache* %2, %struct.regcache** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.value** %5, %struct.value*** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load %struct.regcache*, %struct.regcache** %12, align 8
  %21 = load i32, i32* %14, align 4
  %22 = load %struct.value**, %struct.value*** %15, align 8
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* %17, align 4
  %25 = call i32 @amd64_push_arguments(%struct.regcache* %20, i32 %21, %struct.value** %22, i32 %23, i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %9
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %30 = load i32, i32* %18, align 4
  %31 = call i32 @store_unsigned_integer(i8* %29, i32 8, i32 %30)
  %32 = load %struct.regcache*, %struct.regcache** %12, align 8
  %33 = load i32, i32* @AMD64_RDI_REGNUM, align 4
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %35 = call i32 @regcache_cooked_write(%struct.regcache* %32, i32 %33, i8* %34)
  br label %36

36:                                               ; preds = %28, %9
  %37 = load i32, i32* %16, align 4
  %38 = sub nsw i32 %37, 8
  store i32 %38, i32* %16, align 4
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @store_unsigned_integer(i8* %39, i32 8, i32 %40)
  %42 = load i32, i32* %16, align 4
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %44 = call i32 @write_memory(i32 %42, i8* %43, i32 8)
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @store_unsigned_integer(i8* %45, i32 8, i32 %46)
  %48 = load %struct.regcache*, %struct.regcache** %12, align 8
  %49 = load i32, i32* @AMD64_RSP_REGNUM, align 4
  %50 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %51 = call i32 @regcache_cooked_write(%struct.regcache* %48, i32 %49, i8* %50)
  %52 = load %struct.regcache*, %struct.regcache** %12, align 8
  %53 = load i32, i32* @AMD64_RBP_REGNUM, align 4
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %55 = call i32 @regcache_cooked_write(%struct.regcache* %52, i32 %53, i8* %54)
  %56 = load i32, i32* %16, align 4
  %57 = add nsw i32 %56, 16
  ret i32 %57
}

declare dso_local i32 @amd64_push_arguments(%struct.regcache*, i32, %struct.value**, i32, i32) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #1

declare dso_local i32 @regcache_cooked_write(%struct.regcache*, i32, i8*) #1

declare dso_local i32 @write_memory(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
