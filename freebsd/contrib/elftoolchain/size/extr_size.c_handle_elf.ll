; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/size/extr_size.c_handle_elf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/size/extr_size.c_handle_elf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_9__ = type { i8* }

@ELF_C_READ = common dso_local global i32 0, align 4
@ELF_K_NONE = common dso_local global i64 0, align 8
@RETURN_DATAERR = common dso_local global i32 0, align 4
@ELF_K_ELF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"%s: File format not recognized\00", align 1
@ET_CORE = common dso_local global i64 0, align 8
@style = common dso_local global i64 0, align 8
@STYLE_BERKELEY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@RETURN_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @handle_elf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_elf(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i32, i32* @ELF_C_READ, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %12, align 4
  %17 = call i32* @elf_begin(i32 %15, i32 %16, i32* null)
  store i32* %17, i32** %9, align 8
  br label %18

18:                                               ; preds = %144, %64, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = call i32* @elf_begin(i32 %19, i32 %20, i32* %21)
  store i32* %22, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %149

24:                                               ; preds = %18
  %25 = load i32*, i32** %8, align 8
  %26 = call %struct.TYPE_9__* @elf_getarhdr(i32* %25)
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %10, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @elf_kind(i32* %27)
  %29 = load i64, i64* @ELF_K_NONE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %33 = icmp eq %struct.TYPE_9__* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @elf_end(i32* %35)
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @elf_end(i32* %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @close(i32 %39)
  %41 = load i32, i32* @RETURN_DATAERR, align 4
  store i32 %41, i32* %3, align 4
  br label %155

42:                                               ; preds = %31, %24
  %43 = load i32*, i32** %8, align 8
  %44 = call i64 @elf_kind(i32* %43)
  %45 = load i64, i64* @ELF_K_ELF, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i32*, i32** %8, align 8
  %49 = call i32* @gelf_getehdr(i32* %48, %struct.TYPE_8__* %6)
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %67

51:                                               ; preds = %47, %42
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @elf_next(i32* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @elf_end(i32* %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %57 = icmp ne %struct.TYPE_9__* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  br label %64

62:                                               ; preds = %51
  %63 = load i8*, i8** %5, align 8
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi i8* [ %61, %58 ], [ %63, %62 ]
  %66 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %65)
  br label %18

67:                                               ; preds = %47
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ET_CORE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load i8*, i8** %5, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @handle_core(i8* %77, i32* %78, %struct.TYPE_8__* %6)
  store i32 %79, i32* %13, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @elf_end(i32* %80)
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @elf_end(i32* %82)
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @close(i32 %84)
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %3, align 4
  br label %155

87:                                               ; preds = %71, %67
  store i32* null, i32** %11, align 8
  %88 = load i64, i64* @style, align 8
  %89 = load i64, i64* @STYLE_BERKELEY, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %87
  %92 = call i32 (...) @berkeley_header()
  br label %93

93:                                               ; preds = %104, %91
  %94 = load i32*, i32** %8, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = call i32* @elf_nextscn(i32* %94, i32* %95)
  store i32* %96, i32** %11, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load i32*, i32** %11, align 8
  %100 = call i32* @gelf_getshdr(i32* %99, i32* %7)
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = call i32 @berkeley_calc(i32* %7)
  br label %104

104:                                              ; preds = %102, %98
  br label %93

105:                                              ; preds = %93
  br label %124

106:                                              ; preds = %87
  %107 = load i8*, i8** %5, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %109 = call i32 @sysv_header(i8* %107, %struct.TYPE_9__* %108)
  store i32* null, i32** %11, align 8
  br label %110

110:                                              ; preds = %122, %106
  %111 = load i32*, i32** %8, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = call i32* @elf_nextscn(i32* %111, i32* %112)
  store i32* %113, i32** %11, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load i32*, i32** %11, align 8
  %117 = call i32* @gelf_getshdr(i32* %116, i32* %7)
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32*, i32** %8, align 8
  %121 = call i32 @sysv_calc(i32* %120, %struct.TYPE_8__* %6, i32* %7)
  br label %122

122:                                              ; preds = %119, %115
  br label %110

123:                                              ; preds = %110
  br label %124

124:                                              ; preds = %123, %105
  %125 = load i64, i64* @style, align 8
  %126 = load i64, i64* @STYLE_BERKELEY, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %141

128:                                              ; preds = %124
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %130 = icmp ne %struct.TYPE_9__* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load i8*, i8** %5, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @berkeley_footer(i8* %132, i8* %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %140

137:                                              ; preds = %128
  %138 = load i8*, i8** %5, align 8
  %139 = call i32 @berkeley_footer(i8* %138, i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %131
  br label %143

141:                                              ; preds = %124
  %142 = call i32 (...) @sysv_footer()
  br label %143

143:                                              ; preds = %141, %140
  br label %144

144:                                              ; preds = %143
  %145 = load i32*, i32** %8, align 8
  %146 = call i32 @elf_next(i32* %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32*, i32** %8, align 8
  %148 = call i32 @elf_end(i32* %147)
  br label %18

149:                                              ; preds = %18
  %150 = load i32*, i32** %9, align 8
  %151 = call i32 @elf_end(i32* %150)
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @close(i32 %152)
  %154 = load i32, i32* @RETURN_OK, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %149, %76, %34
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local %struct.TYPE_9__* @elf_getarhdr(i32*) #1

declare dso_local i64 @elf_kind(i32*) #1

declare dso_local i32 @elf_end(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32* @gelf_getehdr(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @elf_next(i32*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @handle_core(i8*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @berkeley_header(...) #1

declare dso_local i32* @elf_nextscn(i32*, i32*) #1

declare dso_local i32* @gelf_getshdr(i32*, i32*) #1

declare dso_local i32 @berkeley_calc(i32*) #1

declare dso_local i32 @sysv_header(i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @sysv_calc(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @berkeley_footer(i8*, i8*, i8*) #1

declare dso_local i32 @sysv_footer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
