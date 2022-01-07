; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_assign_386_stack_local.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_assign_386_stack_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_local_entry = type { i32, i32, i32, %struct.stack_local_entry* }

@MAX_386_STACK_LOCALS = common dso_local global i32 0, align 4
@SLOT_VIRTUAL = common dso_local global i32 0, align 4
@virtuals_instantiated = common dso_local global i32 0, align 4
@ix86_stack_locals = common dso_local global %struct.stack_local_entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assign_386_stack_local(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.stack_local_entry*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MAX_386_STACK_LOCALS, align 4
  %9 = icmp ult i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @gcc_assert(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SLOT_VIRTUAL, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @virtuals_instantiated, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = icmp eq i32 %15, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @gcc_assert(i32 %21)
  %23 = load %struct.stack_local_entry*, %struct.stack_local_entry** @ix86_stack_locals, align 8
  store %struct.stack_local_entry* %23, %struct.stack_local_entry** %6, align 8
  br label %24

24:                                               ; preds = %44, %2
  %25 = load %struct.stack_local_entry*, %struct.stack_local_entry** %6, align 8
  %26 = icmp ne %struct.stack_local_entry* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = load %struct.stack_local_entry*, %struct.stack_local_entry** %6, align 8
  %29 = getelementptr inbounds %struct.stack_local_entry, %struct.stack_local_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.stack_local_entry*, %struct.stack_local_entry** %6, align 8
  %35 = getelementptr inbounds %struct.stack_local_entry, %struct.stack_local_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.stack_local_entry*, %struct.stack_local_entry** %6, align 8
  %41 = getelementptr inbounds %struct.stack_local_entry, %struct.stack_local_entry* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %3, align 4
  br label %70

43:                                               ; preds = %33, %27
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.stack_local_entry*, %struct.stack_local_entry** %6, align 8
  %46 = getelementptr inbounds %struct.stack_local_entry, %struct.stack_local_entry* %45, i32 0, i32 3
  %47 = load %struct.stack_local_entry*, %struct.stack_local_entry** %46, align 8
  store %struct.stack_local_entry* %47, %struct.stack_local_entry** %6, align 8
  br label %24

48:                                               ; preds = %24
  %49 = call i64 @ggc_alloc(i32 24)
  %50 = inttoptr i64 %49 to %struct.stack_local_entry*
  store %struct.stack_local_entry* %50, %struct.stack_local_entry** %6, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.stack_local_entry*, %struct.stack_local_entry** %6, align 8
  %53 = getelementptr inbounds %struct.stack_local_entry, %struct.stack_local_entry* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.stack_local_entry*, %struct.stack_local_entry** %6, align 8
  %56 = getelementptr inbounds %struct.stack_local_entry, %struct.stack_local_entry* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @GET_MODE_SIZE(i32 %58)
  %60 = call i32 @assign_stack_local(i32 %57, i32 %59, i32 0)
  %61 = load %struct.stack_local_entry*, %struct.stack_local_entry** %6, align 8
  %62 = getelementptr inbounds %struct.stack_local_entry, %struct.stack_local_entry* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.stack_local_entry*, %struct.stack_local_entry** @ix86_stack_locals, align 8
  %64 = load %struct.stack_local_entry*, %struct.stack_local_entry** %6, align 8
  %65 = getelementptr inbounds %struct.stack_local_entry, %struct.stack_local_entry* %64, i32 0, i32 3
  store %struct.stack_local_entry* %63, %struct.stack_local_entry** %65, align 8
  %66 = load %struct.stack_local_entry*, %struct.stack_local_entry** %6, align 8
  store %struct.stack_local_entry* %66, %struct.stack_local_entry** @ix86_stack_locals, align 8
  %67 = load %struct.stack_local_entry*, %struct.stack_local_entry** %6, align 8
  %68 = getelementptr inbounds %struct.stack_local_entry, %struct.stack_local_entry* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %48, %39
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @ggc_alloc(i32) #1

declare dso_local i32 @assign_stack_local(i32, i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
