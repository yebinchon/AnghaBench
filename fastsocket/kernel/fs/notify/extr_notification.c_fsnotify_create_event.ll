; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/extr_notification.c_fsnotify_create_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/extr_notification.c_fsnotify_create_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_event = type { i32, i32, %struct.TYPE_2__, i32*, %struct.inode*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32*, i32* }
%struct.inode = type { i32 }
%struct.file = type { %struct.path }
%struct.path = type { i32*, i32* }

@fsnotify_event_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fsnotify_event* @fsnotify_create_event(%struct.inode* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.fsnotify_event*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.fsnotify_event*, align 8
  %17 = alloca %struct.file*, align 8
  %18 = alloca %struct.path*, align 8
  %19 = alloca %struct.path*, align 8
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* @fsnotify_event_cachep, align 4
  %21 = load i32, i32* %15, align 4
  %22 = call %struct.fsnotify_event* @kmem_cache_alloc(i32 %20, i32 %21)
  store %struct.fsnotify_event* %22, %struct.fsnotify_event** %16, align 8
  %23 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %24 = icmp ne %struct.fsnotify_event* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %7
  store %struct.fsnotify_event* null, %struct.fsnotify_event** %8, align 8
  br label %125

26:                                               ; preds = %7
  %27 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %28 = call i32 @initialize_event(%struct.fsnotify_event* %27)
  %29 = load i8*, i8** %13, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %26
  %32 = load i8*, i8** %13, align 8
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @kstrdup(i8* %32, i32 %33)
  %35 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %36 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %38 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* @fsnotify_event_cachep, align 4
  %43 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %44 = call i32 @kmem_cache_free(i32 %42, %struct.fsnotify_event* %43)
  store %struct.fsnotify_event* null, %struct.fsnotify_event** %8, align 8
  br label %125

45:                                               ; preds = %31
  %46 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %47 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strlen(i32 %48)
  %50 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %51 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %45, %26
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %55 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %58 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %57, i32 0, i32 4
  store %struct.inode* %56, %struct.inode** %58, align 8
  %59 = load i32, i32* %12, align 4
  switch i32 %59, label %118 [
    i32 131, label %60
    i32 128, label %82
    i32 130, label %102
    i32 129, label %109
  ]

60:                                               ; preds = %52
  %61 = load i8*, i8** %11, align 8
  %62 = bitcast i8* %61 to %struct.file*
  store %struct.file* %62, %struct.file** %17, align 8
  %63 = load %struct.file*, %struct.file** %17, align 8
  %64 = getelementptr inbounds %struct.file, %struct.file* %63, i32 0, i32 0
  store %struct.path* %64, %struct.path** %18, align 8
  %65 = load %struct.path*, %struct.path** %18, align 8
  %66 = getelementptr inbounds %struct.path, %struct.path* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %69 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32* %67, i32** %70, align 8
  %71 = load %struct.path*, %struct.path** %18, align 8
  %72 = getelementptr inbounds %struct.path, %struct.path* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %75 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32* %73, i32** %76, align 8
  %77 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %78 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %77, i32 0, i32 2
  %79 = call i32 @path_get(%struct.TYPE_2__* %78)
  %80 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %81 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %80, i32 0, i32 0
  store i32 128, i32* %81, align 8
  br label %120

82:                                               ; preds = %52
  %83 = load i8*, i8** %11, align 8
  %84 = bitcast i8* %83 to %struct.path*
  store %struct.path* %84, %struct.path** %19, align 8
  %85 = load %struct.path*, %struct.path** %19, align 8
  %86 = getelementptr inbounds %struct.path, %struct.path* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %89 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i32* %87, i32** %90, align 8
  %91 = load %struct.path*, %struct.path** %19, align 8
  %92 = getelementptr inbounds %struct.path, %struct.path* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %95 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32* %93, i32** %96, align 8
  %97 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %98 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %97, i32 0, i32 2
  %99 = call i32 @path_get(%struct.TYPE_2__* %98)
  %100 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %101 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %100, i32 0, i32 0
  store i32 128, i32* %101, align 8
  br label %120

102:                                              ; preds = %52
  %103 = load i8*, i8** %11, align 8
  %104 = bitcast i8* %103 to i32*
  %105 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %106 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %105, i32 0, i32 3
  store i32* %104, i32** %106, align 8
  %107 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %108 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %107, i32 0, i32 0
  store i32 130, i32* %108, align 8
  br label %120

109:                                              ; preds = %52
  %110 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %111 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %110, i32 0, i32 3
  store i32* null, i32** %111, align 8
  %112 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %113 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  store i32* null, i32** %114, align 8
  %115 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %116 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i32* null, i32** %117, align 8
  br label %120

118:                                              ; preds = %52
  %119 = call i32 (...) @BUG()
  br label %120

120:                                              ; preds = %118, %109, %102, %82, %60
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  %123 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.fsnotify_event*, %struct.fsnotify_event** %16, align 8
  store %struct.fsnotify_event* %124, %struct.fsnotify_event** %8, align 8
  br label %125

125:                                              ; preds = %120, %41, %25
  %126 = load %struct.fsnotify_event*, %struct.fsnotify_event** %8, align 8
  ret %struct.fsnotify_event* %126
}

declare dso_local %struct.fsnotify_event* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @initialize_event(%struct.fsnotify_event*) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.fsnotify_event*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @path_get(%struct.TYPE_2__*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
