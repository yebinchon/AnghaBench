; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_trace_create_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_trace_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.file_operations = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Could not create debugfs '%s' entry\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @trace_create_file(i8* %0, i32 %1, %struct.dentry* %2, i8* %3, %struct.file_operations* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.file_operations*, align 8
  %11 = alloca %struct.dentry*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.file_operations* %4, %struct.file_operations** %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.dentry*, %struct.dentry** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load %struct.file_operations*, %struct.file_operations** %10, align 8
  %17 = call %struct.dentry* @debugfs_create_file(i8* %12, i32 %13, %struct.dentry* %14, i8* %15, %struct.file_operations* %16)
  store %struct.dentry* %17, %struct.dentry** %11, align 8
  %18 = load %struct.dentry*, %struct.dentry** %11, align 8
  %19 = icmp ne %struct.dentry* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @pr_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %5
  %24 = load %struct.dentry*, %struct.dentry** %11, align 8
  ret %struct.dentry* %24
}

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, i8*, %struct.file_operations*) #1

declare dso_local i32 @pr_warning(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
