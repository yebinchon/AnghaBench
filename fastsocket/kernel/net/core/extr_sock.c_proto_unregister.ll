; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c_proto_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c_proto_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32*, i32 }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i32*, i32 }

@proto_list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proto_unregister(%struct.proto* %0) #0 {
  %2 = alloca %struct.proto*, align 8
  store %struct.proto* %0, %struct.proto** %2, align 8
  %3 = call i32 @write_lock(i32* @proto_list_lock)
  %4 = load %struct.proto*, %struct.proto** %2, align 8
  %5 = call i32 @release_proto_idx(%struct.proto* %4)
  %6 = load %struct.proto*, %struct.proto** %2, align 8
  %7 = getelementptr inbounds %struct.proto, %struct.proto* %6, i32 0, i32 3
  %8 = call i32 @list_del(i32* %7)
  %9 = call i32 @write_unlock(i32* @proto_list_lock)
  %10 = load %struct.proto*, %struct.proto** %2, align 8
  %11 = getelementptr inbounds %struct.proto, %struct.proto* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.proto*, %struct.proto** %2, align 8
  %16 = getelementptr inbounds %struct.proto, %struct.proto* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @kmem_cache_destroy(i32* %17)
  %19 = load %struct.proto*, %struct.proto** %2, align 8
  %20 = getelementptr inbounds %struct.proto, %struct.proto* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.proto*, %struct.proto** %2, align 8
  %23 = getelementptr inbounds %struct.proto, %struct.proto* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %21
  %27 = load %struct.proto*, %struct.proto** %2, align 8
  %28 = getelementptr inbounds %struct.proto, %struct.proto* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %26
  %34 = load %struct.proto*, %struct.proto** %2, align 8
  %35 = getelementptr inbounds %struct.proto, %struct.proto* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @kmem_cache_destroy(i32* %38)
  %40 = load %struct.proto*, %struct.proto** %2, align 8
  %41 = getelementptr inbounds %struct.proto, %struct.proto* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @kfree(i32 %44)
  %46 = load %struct.proto*, %struct.proto** %2, align 8
  %47 = getelementptr inbounds %struct.proto, %struct.proto* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %33, %26, %21
  %51 = load %struct.proto*, %struct.proto** %2, align 8
  %52 = getelementptr inbounds %struct.proto, %struct.proto* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = icmp ne %struct.TYPE_4__* %53, null
  br i1 %54, label %55, label %79

55:                                               ; preds = %50
  %56 = load %struct.proto*, %struct.proto** %2, align 8
  %57 = getelementptr inbounds %struct.proto, %struct.proto* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %79

62:                                               ; preds = %55
  %63 = load %struct.proto*, %struct.proto** %2, align 8
  %64 = getelementptr inbounds %struct.proto, %struct.proto* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @kmem_cache_destroy(i32* %67)
  %69 = load %struct.proto*, %struct.proto** %2, align 8
  %70 = getelementptr inbounds %struct.proto, %struct.proto* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @kfree(i32 %73)
  %75 = load %struct.proto*, %struct.proto** %2, align 8
  %76 = getelementptr inbounds %struct.proto, %struct.proto* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %62, %55, %50
  ret void
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @release_proto_idx(%struct.proto*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @kmem_cache_destroy(i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
