; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fix-header.c_recognized_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fix-header.c_recognized_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_proto = type { i32, %struct.partial_proto*, %struct.fn_decl* }
%struct.fn_decl = type { i8*, i8*, %struct.partial_proto* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@required_unseen_count = common dso_local global i32 0, align 4
@cur_file = common dso_local global i32 0, align 4
@inc_filename_length = common dso_local global i32 0, align 4
@inc_filename = common dso_local global i8* null, align 8
@partial_count = common dso_local global i32 0, align 4
@scan_file_obstack = common dso_local global i32 0, align 4
@partial_proto_list = common dso_local global %struct.partial_proto* null, align 8
@verbose = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"(%s: %s non-prototype function declaration.)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @recognized_function(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.partial_proto*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fn_decl*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @NODE_NAME(i32 %15)
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @NODE_LEN(i32 %21)
  %23 = call %struct.fn_decl* @lookup_std_proto(i8* %17, i32 %22)
  store %struct.fn_decl* %23, %struct.fn_decl** %11, align 8
  %24 = load %struct.fn_decl*, %struct.fn_decl** %11, align 8
  %25 = icmp ne %struct.fn_decl* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %4
  %27 = load %struct.fn_decl*, %struct.fn_decl** %11, align 8
  %28 = call i64 @REQUIRED(%struct.fn_decl* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @required_unseen_count, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* @required_unseen_count, align 4
  br label %33

33:                                               ; preds = %30, %26
  %34 = load %struct.fn_decl*, %struct.fn_decl** %11, align 8
  %35 = call i32 @SET_SEEN(%struct.fn_decl* %34)
  br label %36

36:                                               ; preds = %33, %4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %99

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 73
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %99

44:                                               ; preds = %40
  %45 = load i32, i32* @cur_file, align 4
  %46 = call i32 @strlen(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @inc_filename_length, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %59, label %50

50:                                               ; preds = %44
  %51 = load i8*, i8** @inc_filename, align 8
  %52 = load i32, i32* @cur_file, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @inc_filename_length, align 4
  %55 = sub nsw i32 %53, %54
  %56 = add nsw i32 %52, %55
  %57 = call i64 @strcmp(i8* %51, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50, %44
  br label %99

60:                                               ; preds = %50
  %61 = load %struct.fn_decl*, %struct.fn_decl** %11, align 8
  %62 = icmp eq %struct.fn_decl* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %99

64:                                               ; preds = %60
  %65 = load %struct.fn_decl*, %struct.fn_decl** %11, align 8
  %66 = getelementptr inbounds %struct.fn_decl, %struct.fn_decl* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %99

73:                                               ; preds = %64
  %74 = load i32, i32* @partial_count, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @partial_count, align 4
  %76 = call %struct.partial_proto* @obstack_alloc(i32* @scan_file_obstack, i32 24)
  store %struct.partial_proto* %76, %struct.partial_proto** %9, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.partial_proto*, %struct.partial_proto** %9, align 8
  %79 = getelementptr inbounds %struct.partial_proto, %struct.partial_proto* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.fn_decl*, %struct.fn_decl** %11, align 8
  %81 = load %struct.partial_proto*, %struct.partial_proto** %9, align 8
  %82 = getelementptr inbounds %struct.partial_proto, %struct.partial_proto* %81, i32 0, i32 2
  store %struct.fn_decl* %80, %struct.fn_decl** %82, align 8
  %83 = load %struct.partial_proto*, %struct.partial_proto** %9, align 8
  %84 = load %struct.fn_decl*, %struct.fn_decl** %11, align 8
  %85 = getelementptr inbounds %struct.fn_decl, %struct.fn_decl* %84, i32 0, i32 2
  store %struct.partial_proto* %83, %struct.partial_proto** %85, align 8
  %86 = load %struct.partial_proto*, %struct.partial_proto** @partial_proto_list, align 8
  %87 = load %struct.partial_proto*, %struct.partial_proto** %9, align 8
  %88 = getelementptr inbounds %struct.partial_proto, %struct.partial_proto* %87, i32 0, i32 1
  store %struct.partial_proto* %86, %struct.partial_proto** %88, align 8
  %89 = load %struct.partial_proto*, %struct.partial_proto** %9, align 8
  store %struct.partial_proto* %89, %struct.partial_proto** @partial_proto_list, align 8
  %90 = load i64, i64* @verbose, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %73
  %93 = load i32, i32* @stderr, align 4
  %94 = load i8*, i8** @inc_filename, align 8
  %95 = load %struct.fn_decl*, %struct.fn_decl** %11, align 8
  %96 = getelementptr inbounds %struct.fn_decl, %struct.fn_decl* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @fprintf(i32 %93, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %94, i8* %97)
  br label %99

99:                                               ; preds = %39, %43, %59, %63, %72, %92, %73
  ret void
}

declare dso_local %struct.fn_decl* @lookup_std_proto(i8*, i32) #1

declare dso_local i64 @NODE_NAME(i32) #1

declare dso_local i32 @NODE_LEN(i32) #1

declare dso_local i64 @REQUIRED(%struct.fn_decl*) #1

declare dso_local i32 @SET_SEEN(%struct.fn_decl*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.partial_proto* @obstack_alloc(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
