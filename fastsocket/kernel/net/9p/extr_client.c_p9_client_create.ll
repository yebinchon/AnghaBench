; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_client_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_client_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i64, %struct.TYPE_2__*, i32, i32*, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 (%struct.p9_client*, i8*, i8*)*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"No transport defined or default transport\0A\00", align 1
@P9_DEBUG_MUX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"clnt %p trans %p msize %d dotu %d\0A\00", align 1
@P9_IOHDRSZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.p9_client* @p9_client_create(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.p9_client*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.p9_client*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.p9_client* @kmalloc(i32 48, i32 %8)
  store %struct.p9_client* %9, %struct.p9_client** %7, align 8
  %10 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %11 = icmp ne %struct.p9_client* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.p9_client* @ERR_PTR(i32 %14)
  store %struct.p9_client* %15, %struct.p9_client** %3, align 8
  br label %130

16:                                               ; preds = %2
  %17 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %18 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %17, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %18, align 8
  %19 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %20 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %19, i32 0, i32 6
  store i32* null, i32** %20, align 8
  %21 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %22 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %21, i32 0, i32 5
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %25 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %24, i32 0, i32 4
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = call i32* (...) @p9_idpool_create()
  %28 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %29 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %28, i32 0, i32 3
  store i32* %27, i32** %29, align 8
  %30 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %31 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @IS_ERR(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %16
  %36 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %37 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @PTR_ERR(i32* %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %41 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %40, i32 0, i32 3
  store i32* null, i32** %41, align 8
  br label %125

42:                                               ; preds = %16
  %43 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %44 = call i32 @p9_tag_init(%struct.p9_client* %43)
  %45 = load i8*, i8** %5, align 8
  %46 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %47 = call i32 @parse_opts(i8* %45, %struct.p9_client* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %125

51:                                               ; preds = %42
  %52 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %53 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = icmp ne %struct.TYPE_2__* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = call %struct.TYPE_2__* (...) @v9fs_get_default_trans()
  %58 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %59 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %58, i32 0, i32 1
  store %struct.TYPE_2__* %57, %struct.TYPE_2__** %59, align 8
  br label %60

60:                                               ; preds = %56, %51
  %61 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %62 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = icmp eq %struct.TYPE_2__* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32, i32* @EPROTONOSUPPORT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %69 = call i32 (i32, i8*, ...) @P9_DPRINTK(i32 %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %125

70:                                               ; preds = %60
  %71 = load i32, i32* @P9_DEBUG_MUX, align 4
  %72 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %73 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %74 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %77 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %80 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i32, i8*, ...) @P9_DPRINTK(i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.p9_client* %72, %struct.TYPE_2__* %75, i64 %78, i32 %81)
  %83 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %84 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32 (%struct.p9_client*, i8*, i8*)*, i32 (%struct.p9_client*, i8*, i8*)** %86, align 8
  %88 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 %87(%struct.p9_client* %88, i8* %89, i8* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %70
  br label %125

95:                                               ; preds = %70
  %96 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %97 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @P9_IOHDRSZ, align 8
  %100 = add nsw i64 %98, %99
  %101 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %102 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %100, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %95
  %108 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %109 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @P9_IOHDRSZ, align 8
  %114 = sub nsw i64 %112, %113
  %115 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %116 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %107, %95
  %118 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %119 = call i32 @p9_client_version(%struct.p9_client* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %125

123:                                              ; preds = %117
  %124 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  store %struct.p9_client* %124, %struct.p9_client** %3, align 8
  br label %130

125:                                              ; preds = %122, %94, %65, %50, %35
  %126 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %127 = call i32 @p9_client_destroy(%struct.p9_client* %126)
  %128 = load i32, i32* %6, align 4
  %129 = call %struct.p9_client* @ERR_PTR(i32 %128)
  store %struct.p9_client* %129, %struct.p9_client** %3, align 8
  br label %130

130:                                              ; preds = %125, %123, %12
  %131 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  ret %struct.p9_client* %131
}

declare dso_local %struct.p9_client* @kmalloc(i32, i32) #1

declare dso_local %struct.p9_client* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32* @p9_idpool_create(...) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @p9_tag_init(%struct.p9_client*) #1

declare dso_local i32 @parse_opts(i8*, %struct.p9_client*) #1

declare dso_local %struct.TYPE_2__* @v9fs_get_default_trans(...) #1

declare dso_local i32 @P9_DPRINTK(i32, i8*, ...) #1

declare dso_local i32 @p9_client_version(%struct.p9_client*) #1

declare dso_local i32 @p9_client_destroy(%struct.p9_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
