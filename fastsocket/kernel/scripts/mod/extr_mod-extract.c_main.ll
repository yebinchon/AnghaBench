; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_mod-extract.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_mod-extract.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }
%struct.TYPE_3__ = type { i64* }

@.str = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@is_verbose = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"open input\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"close input\00", align 1
@EI_MAG0 = common dso_local global i64 0, align 8
@ELFMAG0 = common dso_local global i64 0, align 8
@EI_MAG1 = common dso_local global i64 0, align 8
@ELFMAG1 = common dso_local global i64 0, align 8
@EI_MAG2 = common dso_local global i64 0, align 8
@ELFMAG2 = common dso_local global i64 0, align 8
@EI_MAG3 = common dso_local global i64 0, align 8
@ELFMAG3 = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Module does not appear to be ELF\0A\00", align 1
@EI_CLASS = common dso_local global i64 0, align 8
@ELFCLASS64 = common dso_local global i64 0, align 8
@EI_DATA = common dso_local global i64 0, align 8
@ELFDATA2MSB = common dso_local global i64 0, align 8
@byteorder_be = common dso_local global i32 0, align 4
@byteorder_le = common dso_local global i32 0, align 4
@order = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"Module is %s-bit %s-endian\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"64\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"big\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"little\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@outfd = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"open output\00", align 1
@EOF = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [13 x i8] c"close output\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %14

14:                                               ; preds = %25, %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = icmp eq i64 %21, 0
  br label %23

23:                                               ; preds = %17, %14
  %24 = phi i1 [ false, %14 ], [ %22, %17 ]
  br i1 %24, label %25, label %32

25:                                               ; preds = %23
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %27, i8*** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @is_verbose, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @is_verbose, align 4
  br label %14

32:                                               ; preds = %23
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 3
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 (...) @usage()
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* @O_RDONLY, align 4
  %42 = call i32 @open(i8* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @exit(i32 1) #3
  unreachable

48:                                               ; preds = %37
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @fstat(i32 %49, %struct.stat* %6)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %54 = call i32 @exit(i32 1) #3
  unreachable

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i32, i32* @PROT_READ, align 4
  %60 = load i32, i32* @PROT_WRITE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @MAP_PRIVATE, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i8* @mmap(i32* null, i64 %58, i32 %61, i32 %62, i32 %63, i32 0)
  store i8* %64, i8** %10, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i8*, i8** @MAP_FAILED, align 8
  %67 = icmp eq i8* %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %55
  %69 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %70 = call i32 @exit(i32 1) #3
  unreachable

71:                                               ; preds = %55
  %72 = load i32, i32* %11, align 4
  %73 = call i64 @close(i32 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %77 = call i32 @exit(i32 1) #3
  unreachable

78:                                               ; preds = %71
  %79 = load i8*, i8** %10, align 8
  %80 = bitcast i8* %79 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %80, %struct.TYPE_3__** %7, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = bitcast i8* %81 to i32*
  store i32* %82, i32** %8, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* @EI_MAG0, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ELFMAG0, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %118, label %91

91:                                               ; preds = %78
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load i64, i64* @EI_MAG1, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ELFMAG1, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %118, label %100

100:                                              ; preds = %91
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = load i64, i64* @EI_MAG2, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ELFMAG2, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %118, label %109

109:                                              ; preds = %100
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* @EI_MAG3, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @ELFMAG3, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %109, %100, %91, %78
  %119 = load i32, i32* @stderr, align 4
  %120 = call i32 @fprintf(i32 %119, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %121 = call i32 @exit(i32 3) #3
  unreachable

122:                                              ; preds = %109
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load i64, i64* @EI_CLASS, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @ELFCLASS64, align 8
  %130 = icmp eq i64 %128, %129
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %13, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = load i64, i64* @EI_DATA, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @ELFDATA2MSB, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i32
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32* @byteorder_be, i32* @byteorder_le
  store i32* %144, i32** @order, align 8
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)
  %153 = call i32 @verbose(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %148, i8* %152)
  %154 = load i8**, i8*** %5, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 2
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @fopen(i8* %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i32 %157, i32* @outfd, align 4
  %158 = load i32, i32* @outfd, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %122
  %161 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %162 = call i32 @exit(i32 1) #3
  unreachable

163:                                              ; preds = %122
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load i8*, i8** %10, align 8
  %168 = load i64, i64* %9, align 8
  %169 = load i32*, i32** %8, align 8
  %170 = call i32 @extract_elf64(i8* %167, i64 %168, i32* %169)
  br label %176

171:                                              ; preds = %163
  %172 = load i8*, i8** %10, align 8
  %173 = load i64, i64* %9, align 8
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %175 = call i32 @extract_elf32(i8* %172, i64 %173, %struct.TYPE_3__* %174)
  br label %176

176:                                              ; preds = %171, %166
  %177 = load i32, i32* @outfd, align 4
  %178 = call i64 @fclose(i32 %177)
  %179 = load i64, i64* @EOF, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %183 = call i32 @exit(i32 1) #3
  unreachable

184:                                              ; preds = %176
  ret i32 0
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @verbose(i8*, i8*, i8*) #1

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i32 @extract_elf64(i8*, i64, i32*) #1

declare dso_local i32 @extract_elf32(i8*, i64, %struct.TYPE_3__*) #1

declare dso_local i64 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
