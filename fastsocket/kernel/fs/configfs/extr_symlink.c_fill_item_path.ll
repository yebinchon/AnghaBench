; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_symlink.c_fill_item_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_symlink.c_fill_item_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { %struct.config_item* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_item*, i8*, i32)* @fill_item_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_item_path(%struct.config_item* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.config_item*, align 8
  %8 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %6, align 4
  %11 = load %struct.config_item*, %struct.config_item** %4, align 8
  store %struct.config_item* %11, %struct.config_item** %7, align 8
  br label %12

12:                                               ; preds = %42, %3
  %13 = load %struct.config_item*, %struct.config_item** %7, align 8
  %14 = icmp ne %struct.config_item* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.config_item*, %struct.config_item** %7, align 8
  %17 = call i32 @configfs_is_root(%struct.config_item* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  br i1 %21, label %22, label %46

22:                                               ; preds = %20
  %23 = load %struct.config_item*, %struct.config_item** %7, align 8
  %24 = call i32 @config_item_name(%struct.config_item* %23)
  %25 = call i32 @strlen(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load %struct.config_item*, %struct.config_item** %7, align 8
  %34 = call i32 @config_item_name(%struct.config_item* %33)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @strncpy(i8* %32, i32 %34, i32 %35)
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  store i8 47, i8* %41, align 1
  br label %42

42:                                               ; preds = %22
  %43 = load %struct.config_item*, %struct.config_item** %7, align 8
  %44 = getelementptr inbounds %struct.config_item, %struct.config_item* %43, i32 0, i32 0
  %45 = load %struct.config_item*, %struct.config_item** %44, align 8
  store %struct.config_item* %45, %struct.config_item** %7, align 8
  br label %12

46:                                               ; preds = %20
  ret void
}

declare dso_local i32 @configfs_is_root(%struct.config_item*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @config_item_name(%struct.config_item*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
