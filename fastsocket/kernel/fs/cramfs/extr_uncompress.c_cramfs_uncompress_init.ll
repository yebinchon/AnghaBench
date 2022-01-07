; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cramfs/extr_uncompress.c_cramfs_uncompress_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cramfs/extr_uncompress.c_cramfs_uncompress_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i32 }

@initialized = common dso_local global i64 0, align 8
@stream = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cramfs_uncompress_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @initialized, align 8
  %3 = add nsw i64 %2, 1
  store i64 %3, i64* @initialized, align 8
  %4 = icmp ne i64 %2, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %0
  %6 = call i32 (...) @zlib_inflate_workspacesize()
  %7 = call i32 @vmalloc(i32 %6)
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stream, i32 0, i32 2), align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stream, i32 0, i32 2), align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  store i64 0, i64* @initialized, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %1, align 4
  br label %16

13:                                               ; preds = %5
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stream, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stream, i32 0, i32 0), align 8
  %14 = call i32 @zlib_inflateInit(%struct.TYPE_3__* @stream)
  br label %15

15:                                               ; preds = %13, %0
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %15, %10
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i32 @vmalloc(i32) #1

declare dso_local i32 @zlib_inflate_workspacesize(...) #1

declare dso_local i32 @zlib_inflateInit(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
