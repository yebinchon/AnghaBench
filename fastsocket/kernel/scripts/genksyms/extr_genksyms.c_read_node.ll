; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/genksyms/extr_genksyms.c_read_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/genksyms/extr_genksyms.c_read_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i8*, i32 }

@SYM_NORMAL = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Token too long\0A\00", align 1
@symbol_type_name = common dso_local global i64** null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Unknown type %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.string_list* (i32*)* @read_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.string_list* @read_node(i32* %0) #0 {
  %2 = alloca %struct.string_list*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca %struct.string_list, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  store i8* %9, i8** %8, align 8
  %10 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 1
  %11 = load i32, i32* @SYM_NORMAL, align 4
  store i32 %11, i32* %10, align 8
  br label %12

12:                                               ; preds = %52, %25, %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @fgetc(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @EOF, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %58

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 32
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %24 = icmp eq i8* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %12

26:                                               ; preds = %20
  br label %58

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %34 = icmp eq i8* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store %struct.string_list* null, %struct.string_list** %2, align 8
  br label %117

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @ungetc(i32 %37, i32* %38)
  br label %58

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %45 = getelementptr inbounds i8, i8* %44, i64 256
  %46 = getelementptr inbounds i8, i8* %45, i64 -1
  %47 = icmp uge i8* %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @exit(i32 1) #3
  unreachable

52:                                               ; preds = %41
  %53 = load i32, i32* %6, align 4
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %55, align 8
  store i8 %54, i8* %56, align 1
  br label %12

58:                                               ; preds = %36, %26, %12
  %59 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %62 = icmp eq i8* %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store %struct.string_list* null, %struct.string_list** %2, align 8
  br label %117

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  store i8 0, i8* %66, align 1
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %68 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  store i8* %67, i8** %68, align 8
  %69 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 35
  br i1 %74, label %75, label %115

75:                                               ; preds = %64
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %103, %75
  %77 = load i32, i32* %7, align 4
  %78 = load i64**, i64*** @symbol_type_name, align 8
  %79 = call i32 @ARRAY_SIZE(i64** %78)
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i64
  %87 = load i64**, i64*** @symbol_type_name, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64*, i64** %87, i64 %89
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %86, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %81
  %96 = load i32, i32* %7, align 4
  %97 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 1
  store i32 %96, i32* %97, align 8
  %98 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  store i8* %100, i8** %98, align 8
  %101 = call %struct.string_list* @copy_node(%struct.string_list* %5)
  store %struct.string_list* %101, %struct.string_list** %2, align 8
  br label %117

102:                                              ; preds = %81
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %76

106:                                              ; preds = %76
  %107 = load i32, i32* @stderr, align 4
  %108 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 0
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = call i32 @exit(i32 1) #3
  unreachable

115:                                              ; preds = %64
  %116 = call %struct.string_list* @copy_node(%struct.string_list* %5)
  store %struct.string_list* %116, %struct.string_list** %2, align 8
  br label %117

117:                                              ; preds = %115, %95, %63, %35
  %118 = load %struct.string_list*, %struct.string_list** %2, align 8
  ret %struct.string_list* %118
}

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ARRAY_SIZE(i64**) #1

declare dso_local %struct.string_list* @copy_node(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
