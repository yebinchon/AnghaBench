; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_prints.c_print_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_prints.c_print_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.reiserfs_key = type { i32 }
%struct.disk_child = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"INTERNAL NODE (%ld) contains %z\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"PTR %d: %y \00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"KEY %d: %k PTR %d: %y \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_head*, i32, i32)* @print_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_internal(%struct.buffer_head* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.reiserfs_key*, align 8
  %9 = alloca %struct.disk_child*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %14 = call i32 @B_IS_KEYS_LEVEL(%struct.buffer_head* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %87

17:                                               ; preds = %3
  %18 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %19 = call i32 @check_internal(%struct.buffer_head* %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  store i32 0, i32* %11, align 4
  %23 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %24 = call i32 @B_NR_ITEMS(%struct.buffer_head* %23)
  store i32 %24, i32* %12, align 4
  br label %38

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %29 = call i32 @B_NR_ITEMS(%struct.buffer_head* %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  br label %36

33:                                               ; preds = %25
  %34 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %35 = call i32 @B_NR_ITEMS(%struct.buffer_head* %34)
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i32 [ %32, %31 ], [ %35, %33 ]
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %36, %22
  %39 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %43 = call i32 (i8*, i32, %struct.buffer_head*, ...) @reiserfs_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %41, %struct.buffer_head* %42)
  %44 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call %struct.disk_child* @B_N_CHILD(%struct.buffer_head* %44, i32 %45)
  store %struct.disk_child* %46, %struct.disk_child** %9, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.disk_child*, %struct.disk_child** %9, align 8
  %49 = bitcast %struct.disk_child* %48 to %struct.buffer_head*
  %50 = call i32 (i8*, i32, %struct.buffer_head*, ...) @reiserfs_printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %47, %struct.buffer_head* %49)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %10, align 4
  %52 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call %struct.reiserfs_key* @B_N_PDELIM_KEY(%struct.buffer_head* %52, i32 %53)
  store %struct.reiserfs_key* %54, %struct.reiserfs_key** %8, align 8
  %55 = load %struct.disk_child*, %struct.disk_child** %9, align 8
  %56 = getelementptr inbounds %struct.disk_child, %struct.disk_child* %55, i32 1
  store %struct.disk_child* %56, %struct.disk_child** %9, align 8
  br label %57

57:                                               ; preds = %78, %38
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.reiserfs_key*, %struct.reiserfs_key** %8, align 8
  %64 = bitcast %struct.reiserfs_key* %63 to %struct.buffer_head*
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  %67 = load %struct.disk_child*, %struct.disk_child** %9, align 8
  %68 = call i32 (i8*, i32, %struct.buffer_head*, ...) @reiserfs_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %62, %struct.buffer_head* %64, i32 %66, %struct.disk_child* %67)
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %61
  %72 = load i32, i32* %10, align 4
  %73 = srem i32 %72, 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %71, %61
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  %81 = load %struct.reiserfs_key*, %struct.reiserfs_key** %8, align 8
  %82 = getelementptr inbounds %struct.reiserfs_key, %struct.reiserfs_key* %81, i32 1
  store %struct.reiserfs_key* %82, %struct.reiserfs_key** %8, align 8
  %83 = load %struct.disk_child*, %struct.disk_child** %9, align 8
  %84 = getelementptr inbounds %struct.disk_child, %struct.disk_child* %83, i32 1
  store %struct.disk_child* %84, %struct.disk_child** %9, align 8
  br label %57

85:                                               ; preds = %57
  %86 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %16
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @B_IS_KEYS_LEVEL(%struct.buffer_head*) #1

declare dso_local i32 @check_internal(%struct.buffer_head*) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i32 @reiserfs_printk(i8*, i32, %struct.buffer_head*, ...) #1

declare dso_local %struct.disk_child* @B_N_CHILD(%struct.buffer_head*, i32) #1

declare dso_local %struct.reiserfs_key* @B_N_PDELIM_KEY(%struct.buffer_head*, i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
