; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_xattr.c_ext3_xattr_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_xattr.c_ext3_xattr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i32 }

@ext3_xattr_handler_map = common dso_local global %struct.xattr_handler** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xattr_handler* (i32)* @ext3_xattr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xattr_handler* @ext3_xattr_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xattr_handler*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.xattr_handler* null, %struct.xattr_handler** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load %struct.xattr_handler**, %struct.xattr_handler*** @ext3_xattr_handler_map, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.xattr_handler** %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load %struct.xattr_handler**, %struct.xattr_handler*** @ext3_xattr_handler_map, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.xattr_handler*, %struct.xattr_handler** %12, i64 %14
  %16 = load %struct.xattr_handler*, %struct.xattr_handler** %15, align 8
  store %struct.xattr_handler* %16, %struct.xattr_handler** %3, align 8
  br label %17

17:                                               ; preds = %11, %6, %1
  %18 = load %struct.xattr_handler*, %struct.xattr_handler** %3, align 8
  ret %struct.xattr_handler* %18
}

declare dso_local i32 @ARRAY_SIZE(%struct.xattr_handler**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
