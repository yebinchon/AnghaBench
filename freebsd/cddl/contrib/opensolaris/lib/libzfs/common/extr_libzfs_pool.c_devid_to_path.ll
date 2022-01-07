; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_devid_to_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_devid_to_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"/dev\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @devid_to_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @devid_to_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @devid_str_decode(i8* %9, i32* %4, i8** %5)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %33

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @devid_deviceid_to_nmlist(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14, i8* %15, %struct.TYPE_4__** %7)
  store i32 %16, i32* %8, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @devid_str_free(i8* %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @devid_free(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store i8* null, i8** %2, align 8
  br label %33

24:                                               ; preds = %13
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @strdup(i32 %28)
  store i8* %29, i8** %6, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = call i32 @devid_free_nmlist(%struct.TYPE_4__* %30)
  %32 = load i8*, i8** %6, align 8
  store i8* %32, i8** %2, align 8
  br label %33

33:                                               ; preds = %24, %23, %12
  %34 = load i8*, i8** %2, align 8
  ret i8* %34
}

declare dso_local i64 @devid_str_decode(i8*, i32*, i8**) #1

declare dso_local i32 @devid_deviceid_to_nmlist(i8*, i32, i8*, %struct.TYPE_4__**) #1

declare dso_local i32 @devid_str_free(i8*) #1

declare dso_local i32 @devid_free(i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @devid_free_nmlist(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
