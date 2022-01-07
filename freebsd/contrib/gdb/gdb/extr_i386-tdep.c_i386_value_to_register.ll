; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_value_to_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_value_to_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.type = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i32, %struct.type*, i8*)* @i386_value_to_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i386_value_to_register(%struct.frame_info* %0, i32 %1, %struct.type* %2, i8* %3) #0 {
  %5 = alloca %struct.frame_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.type*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.type* %2, %struct.type** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.type*, %struct.type** %7, align 8
  %12 = call i32 @TYPE_LENGTH(%struct.type* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i8*, i8** %8, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @i386_fp_regnum_p(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.type*, %struct.type** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @i387_value_to_register(%struct.frame_info* %18, i32 %19, %struct.type* %20, i8* %21)
  br label %58

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = icmp sgt i32 %24, 4
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = srem i32 %27, 4
  %29 = icmp eq i32 %28, 0
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ false, %23 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @gdb_assert(i32 %32)
  br label %34

34:                                               ; preds = %37, %30
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, -1
  %40 = zext i1 %39 to i32
  %41 = call i32 @gdb_assert(i32 %40)
  %42 = load i32, i32* @current_gdbarch, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @register_size(i32 %42, i32 %43)
  %45 = icmp eq i32 %44, 4
  %46 = zext i1 %45 to i32
  %47 = call i32 @gdb_assert(i32 %46)
  %48 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @put_frame_register(%struct.frame_info* %48, i32 %49, i8* %50)
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @i386_next_regnum(i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 %54, 4
  store i32 %55, i32* %9, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 4
  store i8* %57, i8** %10, align 8
  br label %34

58:                                               ; preds = %17, %34
  ret void
}

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i64 @i386_fp_regnum_p(i32) #1

declare dso_local i32 @i387_value_to_register(%struct.frame_info*, i32, %struct.type*, i8*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @register_size(i32, i32) #1

declare dso_local i32 @put_frame_register(%struct.frame_info*, i32, i8*) #1

declare dso_local i32 @i386_next_regnum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
